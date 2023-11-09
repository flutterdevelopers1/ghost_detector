import 'package:flutter/material.dart';
import 'package:ghost_detector/app/audio/audio_page.dart';
import 'package:ghost_detector/app/emf/emf_page.dart';
import 'package:ghost_detector/app/emf/widgets/home.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.black,
        ),
        body: Container(
            child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EmfPage()));
                  },
                  child: Text("EMF")),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AudioPage()));
                  },
                  child: Text("Audio"))
            ],
          ),
        )));
  }
}
