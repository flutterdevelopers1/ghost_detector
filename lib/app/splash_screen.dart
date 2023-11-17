import 'package:flutter/material.dart';
import 'package:ghost_detector/app/signup/signup_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/nun_3.jpeg"), fit: BoxFit.cover),
          ),
          padding: EdgeInsets.only(top: 65),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 600),
                child: Center(
                  child: Text(
                    " GHOST DETECTOR",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white70,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: height * 0.15)),
              Text(
                "LETS START",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white70,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignupPage()));
          },
          foregroundColor: Colors.white,
          backgroundColor: Colors.white12,
          child: const Icon(Icons.double_arrow_outlined),
        ), // T
      ),
    );
  }
}
