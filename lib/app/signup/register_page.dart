import 'package:flutter/material.dart';
import 'package:ghost_detector/app/auth/otp_page.dart';
import 'package:ghost_detector/app/login/login_page.dart';
import 'package:ghost_detector/app/splash_screen.dart';
import 'package:ghost_detector/app/signup/signup_page.dart';
// import 'package:mynew_app/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/login_ghost2.png",
              height: 375,
              width: 500,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text(
                "GHOST DETECTOR",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Colors.white70),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "CREATE ACCOUNT",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                    color: Colors.white70),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                style: TextStyle(
                    color: Colors.white70
                ),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white70,
                  ),
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                style: TextStyle(
                    color: Colors.white70
                ),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white70,
                  ),
                  labelText: "EMAIL ADDRESS",
                  labelStyle: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: TextField(
                style: TextStyle(
                    color: Colors.white70
                ),
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  prefixIcon: Icon(
                    Icons.lock_open,
                    color: Colors.white70,
                  ),
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                height: 50,
                width: 500,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => loginPage(context)));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.white70),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Go Back",
                    style: TextStyle(fontSize: 15, color: Colors.white70),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget loginPage(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black,
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/login_ghost2.png",
            height: 400,
            width: 500,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              "GHOST DETECTOR",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white70),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "LOGIN",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.white70),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: TextField(
              style: TextStyle(
                  color: Colors.white70
              ),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white70,
                ),
                labelText: "EMAIL ADDRESS",
                labelStyle: TextStyle(color: Colors.white70),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: TextField(
              style: TextStyle(
                  color: Colors.white70
              ),
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                ),
                prefixIcon: Icon(
                  Icons.lock_open,
                  color: Colors.white70,
                ),
                labelText: "PASSWORD",
                labelStyle: TextStyle(color: Colors.white70),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 50,
              width: 500,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpPage()));
                },
                child: Text(
                  "Login to account",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.white70),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
