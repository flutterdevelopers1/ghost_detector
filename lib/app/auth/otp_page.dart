import 'package:flutter/material.dart';
import 'package:ghost_detector/app/login/login_success.dart';
// import 'package:mynew_app/login_successpage.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Gmail Verification",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                ),
                Text(
                  "OTP Verification",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Colors.white70),
                ),
                Text(
                  "We sent your code in Gmail",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "This code will expired in",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TweenAnimationBuilder(
                      tween: Tween(begin: 60.0, end: 0),
                      duration: Duration(seconds: 60),
                      builder: (context, value, child) => Text(
                          "00:${value.toInt()}",
                          style: TextStyle(color: Colors.redAccent)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OTPform(),
                      OTPform(),
                      OTPform(),
                      OTPform(),
                      OTPform(),
                      OTPform(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend OTP Code",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.redAccent),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 100)),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: SizedBox(
                    height: 50,
                    width: 500,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginSucess()));
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OTPform extends StatefulWidget {
  @override
  State<OTPform> createState() => _OTPformState();
}

class _OTPformState extends State<OTPform> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        children: [
          Container(
            child: SizedBox(
              width: 60,
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [],
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.redAccent),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
