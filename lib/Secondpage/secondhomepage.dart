import 'dart:math';

import 'package:doctorappoinment/FirstPage/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondHomepage extends StatefulWidget {
  const SecondHomepage({super.key});

  @override
  State<SecondHomepage> createState() => _SecondHomepageState();
}

class _SecondHomepageState extends State<SecondHomepage> {
  var sound = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue.shade900.withOpacity(0.9),
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                  image: DecorationImage(
                      image: AssetImage("images/Profile.webp"),
                      fit: BoxFit.cover)),
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1st part
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 100),
                          child: AppBarSide()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 18, right: 16),
                          height: MediaQuery.of(context).size.height * .240,
                          width: MediaQuery.of(context).size.width * .260,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.black.withOpacity(0.1)),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("images/Profilephoto.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * .03,
                    top: MediaQuery.of(context).size.height * .42,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          border: Border.all(
                              width: 1, color: Colors.black.withOpacity(0.1))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(
                            "7.30",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 300,
                    right: 0,
                    child: Transform.rotate(
                      angle: pi / 0.6666,
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.36,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1, color: Colors.black.withOpacity(0.2)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Transform.rotate(
                                angle: pi / 2,
                                child: Icon(
                                  sound == 0
                                      ? Icons.notifications_off
                                      : Icons.notifications_active_rounded,
                                  size: 30,
                                  color: sound == 0
                                      ? Colors.red.shade400
                                      : Colors.green.shade400,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.055,
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Center(
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                        thumbShape: RoundSliderThumbShape(
                                            enabledThumbRadius: 10),
                                        overlayShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 10,
                                        ),
                                        thumbColor: Colors.white,
                                        activeTrackColor: Colors.blue.shade900),
                                    child: Slider(
                                        min: 0,
                                        max: 20,
                                        value: sound.toDouble(),
                                        onChanged: ((value) {
                                          setState(() {
                                            sound = value.toInt();
                                            print(sound);
                                          });
                                        })),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
