import 'package:ghost_detector/app/emf/models/magnitudeProvider.dart';
import 'package:ghost_detector/app/emf/visuals.dart';
import 'package:ghost_detector/app/emf/colors.dart';
import 'package:ghost_detector/app/emf/widgets/mainReading.dart';
import 'package:ghost_detector/app/emf/widgets/meterReading.dart';
import 'package:ghost_detector/app/emf/widgets/xyzReading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MainReading(),
              XYZReading(),
              MeterReading(),
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(color: Colors.black))),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.primaryColor)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Visuals()));
                    },
                    child: SizedBox(
                      height: 30,
                      width: 100,
                      child: Container(
                        color: Colors.white70,
                          child: Center(child: Text('Visualize',style: TextStyle(color: Colors.black),))),
                    )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),

              ),
              SizedBox(
                height: 10,
              ),
              Consumer<MagnitudeProvider>(
                builder: (context, model, child) => Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  side: BorderSide(color: Colors.black))),
                          backgroundColor: MaterialStateProperty.all(
                              AppColors.primaryColor)),
                      onPressed: () {
                        model.changeValues();
                      },
                      child: SizedBox(
                        height: 30,
                        width: 100,
                        child: Container(
                          color: Colors.white70,
                            child: Center(child: Text('Start',style: TextStyle(color: Colors.black),
                            ),
                            ),
                        ),
                      )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),

              // StartButton()
            ],
          ),
        ),
      ),
    );
  }
}
