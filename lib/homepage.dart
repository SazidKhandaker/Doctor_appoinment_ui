// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:doctorappoinment/FirstPage/appbar.dart';
import 'package:doctorappoinment/FirstPage/map.dart';
import 'package:doctorappoinment/FirstPage/profile.dart';
import 'package:doctorappoinment/FirstPage/reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'FirstPage/doctordescription.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var weight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.200,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Start",
                    style: fctn(20, Colors.white),
                  ),
                  subtitle: Text("Conversation"),
                  tileColor: Colors.green,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //1st part
            AppBarSide(),
            //2nd part
            ProfileDemo(),
            //3rd part
            ReviewsofDoctor(),
            //4th part
            DoctorDescription(),
            //5th part
            MapLocation(),
          ]),
        ),
      ),
    );
  }

  fctn(double size, Color clr, [FontWeight? fw]) {
    return TextStyle(
      fontSize: size,
      color: clr,
      fontWeight: fw,
    );
  }
}
