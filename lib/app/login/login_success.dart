import 'package:flutter/material.dart';
import 'package:ghost_detector/app/dashboard/dashboard.dart';
import 'package:ghost_detector/app/home/home_page.dart';
// import 'package:mynew_app/home_page.dart';

class LoginSucess extends StatefulWidget {
  @override
  State<LoginSucess> createState() => _LoginSucessState();
}

class _LoginSucessState extends State<LoginSucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkXty8D87kNq7Mb9R5BCXjYPodIqH8w8OnBw&usqp=CAU")),
              Text(
                "Login Successfully!",
                style: TextStyle(fontSize: 20),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                "Your account is successfully created",
                style: TextStyle(color: Colors.grey),
              ),
              Padding(padding: EdgeInsets.only(top: 100)),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: Text("Continue"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
