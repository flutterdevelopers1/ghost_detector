import 'package:flutter/material.dart';




class About extends StatefulWidget {


  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w900),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Our paranormal proving application is devoted to uncovering the mysteries of the supernatural world. With over a decade of experience in this field, our team of experts has dedicated their time and expertise to provide users with a unique and authentic paranormal experience. We understand the curiosity and fascination that surrounds the unknown, and our mission is to bridge the gap between science and the inexplicable. We strive to provide accurate and verifiable evidence through our cutting-edge technology and rigorous investigation methods. Our commitment to professionalism ensures that our users can trust the results they obtain from our application. Whether you are a skeptic or a believer, our aim is to satisfy your curiosity and provide a platform for you to explore the paranormal. Join us on this thrilling journey into the unknown and unlock the secrets that lie beyond the veil of reality.",style: TextStyle(color: Colors.white70,fontSize: 20),),
        ),
      ),
    );
  }
}
