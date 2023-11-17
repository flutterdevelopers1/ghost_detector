import 'package:flutter/material.dart';
import 'package:ghost_detector/app/dashboard/about_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white70),),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15),
                child: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Icon(Icons.card_membership_outlined),
                    title: Text("Premium membership"),
                    trailing: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.black,
                      activeColor: Colors.pink,
                    ),
                  ),

                ),
              ),Padding(padding: EdgeInsets.only(top: 20)),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15),
                child: Container(
                  color:Colors.white70,
                  child: ListTile(
                    leading: Icon(Icons.privacy_tip_outlined),
                    title: Text("Privacy policy"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){},
                  ),
                ),
              ),Padding(padding: EdgeInsets.only(top: 20)),

              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15),
                child: Container(
                  color:Colors.white70,
                  child: ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("About us "),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => About()));
                    },
                  ),
                ),
              ),Padding(padding: EdgeInsets.only(top: 20)),

              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15),
                child: Container(
                  color:Colors.white70,
                  child: ListTile(
                    leading: Icon(Icons.contact_mail),
                    title: Text("Contact us "),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){},
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}