import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class ProfileDemo extends StatelessWidget {
  ProfileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var weight = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16),
      child: Container(
        child: Row(
          children: [
            Container(
              height: hight * .260,
              width: weight * .270,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage("images/Profile.webp"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                height: hight * .260,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0, top: 8),
                      child: Text(
                        "Dr. Perrin P.",
                        style: fctn(22, Colors.black54, FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("Neurologist",
                          style: fctn(18, Colors.grey, FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "images/map-pin.svg",
                            height: 40,
                          ),
                          Text(
                            "Los Angeles,Us",
                            style: fctn(18, Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 60,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(1, 1),
                                      blurRadius: 1,
                                      color: Colors.black.withOpacity(0.1)),
                                  BoxShadow(
                                      offset: Offset(-1, -1),
                                      blurRadius: 1,
                                      color: Colors.black.withOpacity(0.1))
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  "images/star.svg",
                                  height: 30,
                                  color: Colors.orange.shade300,
                                ),
                                Text(
                                  "5 Stars",
                                  style: fctn(18, Colors.lightBlue.shade200),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 1),
                                        blurRadius: 1,
                                        color: Colors.black.withOpacity(0.1)),
                                    BoxShadow(
                                        offset: Offset(-1, -1),
                                        blurRadius: 1,
                                        color: Colors.black.withOpacity(0.1))
                                  ]),
                              child: Center(
                                child: SvgPicture.asset(
                                  "images/Love.svg",
                                  height: 40,
                                  color: Colors.red.shade400,
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
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
