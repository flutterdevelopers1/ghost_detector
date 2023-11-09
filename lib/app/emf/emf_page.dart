import 'package:ghost_detector/app/emf/widgets/home.dart';
import 'package:ghost_detector/app/emf/models/magnitudeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmfPage extends StatelessWidget {
  const EmfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MagnitudeProvider(),
        ),
      ],
      child: MaterialApp(
          theme: ThemeData(fontFamily: 'DMSans', brightness: Brightness.dark),
          debugShowCheckedModeBanner: false,
          home: Home()),
    );
  }
}
