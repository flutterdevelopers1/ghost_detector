import 'package:flutter/material.dart';
import 'package:ghost_detector/app/audio/audio_page.dart';
import 'package:ghost_detector/app/emf/emf_page.dart';
import 'package:ghost_detector/app/emf/widgets/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'settings_page.dart';
import 'package:ghost_detector/app/login/login_page.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "GHOST DETECTOR",
            style:
                TextStyle(color: Colors.white70, fontWeight: FontWeight.w900),
          ),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            children: [
              Center(
                child: DrawerHeader(
                  child: Center(
                      child: Text(
                    "Welcome To  Ghost Detector",
                    style: TextStyle(
                        color: Colors.white38,
                        fontSize: 23,
                        fontWeight: FontWeight.w900),
                  )),
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white70,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white70),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white70,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
              ),
              ListTile(
                leading: Icon(Icons.star_rate_outlined, color: Colors.white70),
                title: Text("Rate us", style: TextStyle(color: Colors.white70)),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: Colors.white70),
                onTap: () async {
                  launch("https://github.com");
                },
              ),
              ListTile(
                leading: Icon(Icons.mobile_screen_share_outlined,
                    color: Colors.white70),
                title: Text("Share", style: TextStyle(color: Colors.white70)),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: Colors.white70),
                onTap: () async {
                  await launch('https://github.com');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white70),
                title:
                    Text("Settings", style: TextStyle(color: Colors.white70)),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: Colors.white70),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white70),
                title: Text("Log out", style: TextStyle(color: Colors.white70)),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: Colors.white70),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: SizedBox(
                  height: 50,
                  width: 500,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white70,
                        shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EmfPage()));
                      },
                      child: Text(
                        "EMF",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 50,
                  width: 500,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white70,
                        shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioPage()));
                      },
                      child: Text(
                        "Audio",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              )
            ],
          ),
        )));
  }
}
