import 'package:flutter/material.dart';
import 'package:ghost_detector/app/login/login_page.dart';
// import 'package:mynew_app/login_page.dart';
// import 'package:mynew_app/resister_page.dart';
import 'package:ghost_detector/app/splash_screen.dart';
import 'package:ghost_detector/app/signup/register_page.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/nun_2.jpeg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "GHOST DETECTOR",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white70,
                fontSize: 30,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Column(
              children: [
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 550),
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.transparent),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Container(
                      width: 250,
                      height: 30,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "LOGIN TO ACCOUNT",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Column(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: Container(
                          width: 250,
                          height: 30,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              " CREATE ACCOUNT",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
