import 'dart:io';

import 'package:ghost_detector/app/audio/recorder/audio_recorder.dart';
import 'package:ghost_detector/app/audio/recorder/record_repository.dart';
import 'package:ghost_detector/app/audio/widgets/loopback_button.dart';
import 'package:ghost_detector/app/audio/widgets/record_button.dart';
import 'package:ghost_detector/app/audio/widgets/records_list_view.dart';
import 'package:ghost_detector/app/audio/widgets/rms_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coast_audio_miniaudio/flutter_coast_audio_miniaudio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  RecordRepository? recordRepo;
  final sourceFormat = const AudioFormat(
      sampleRate: 44100, channels: 2, sampleFormat: SampleFormat.float32);
  final bufferFrameSize = 2048;
  late final outputFormat = sourceFormat.copyWith(
      sampleRate: 48000, channels: 1, sampleFormat: SampleFormat.int16);
  late final recorder = AudioRecorder(
      captureFormat: sourceFormat, bufferFrameSize: bufferFrameSize);
  File? _recordingFile;
  AudioFileDataSource? _recordingDataSource;
  var _hasPermission = false;

  @override
  void initState() {
    super.initState();
    _prepare();
  }

  void _prepare() async {
    final doc = await getApplicationDocumentsDirectory();
    setState(() {
      recordRepo = RecordRepository(doc);
    });

    if (Platform.isIOS || Platform.isAndroid) {
      final status = await Permission.microphone.request();
      setState(() {
        _hasPermission = status == PermissionStatus.granted;
      });
    } else {
      setState(() {
        _hasPermission = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_hasPermission) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Permission denied'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => openAppSettings(),
                child: const Text('Open Settings'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Recorder'),
      ),
      drawer: Drawer(
        child: RecordsListView(
          repository: recordRepo!,
          recording: _recordingFile,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: Slider(
                        value: recorder.volume,
                        onChanged: (v) {
                          setState(() {
                            recorder.volume = v;
                          });
                        },
                      ),
                    ),
                    const Icon(Icons.mic),
                  ],
                ),
                Column(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: Slider(
                        value: recorder.echo,
                        onChanged: (v) {
                          setState(() {
                            recorder.echo = v;
                          });
                        },
                      ),
                    ),
                    const Icon(Icons.multitrack_audio_outlined),
                  ],
                ),
              ],
            ),
            Expanded(
              child: RmsView(
                recorder: recorder,
                maxRmsLength: MediaQuery.of(context).size.width ~/ 1.2,
              ),
            ),
            const Divider(
              thickness: 1,
              height: 1,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: RecordButton(
                      recorder: recorder,
                      onRecord: () async {
                        final file = await recordRepo!.createNewRecord();
                        debugPrint('record created: ${file.absolute.path}');

                        final dataSource = AudioFileDataSource(
                            file: file, mode: FileMode.write);
                        _recordingDataSource = dataSource;

                        final encoder = MabAudioEncoder(
                          dataSource: dataSource,
                          encodingFormat: MabEncodingFormat.wav,
                          inputFormat: outputFormat,
                        );
                        await recorder.open(encoder);
                        recorder.start();

                        setState(() {
                          _recordingFile = file;
                        });
                      },
                      onStop: () async {
                        await recorder.stop();
                        _recordingDataSource?.dispose();
                        _recordingDataSource = null;

                        setState(() {
                          _recordingFile = null;
                        });
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: LoopbackButton(
                      recorder: recorder,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
