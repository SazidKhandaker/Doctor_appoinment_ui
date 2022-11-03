import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReviewsofDoctor extends StatelessWidget {
  const ReviewsofDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var weight = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 08),
      child: Container(
        height: hight * 0.100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "100",
                    style: fctn(22, Colors.black87, FontWeight.bold),
                  ),
                  Text(
                    "Reviews",
                    style:
                        fctn(20, Colors.grey.withOpacity(0.7), FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "100",
                    style: fctn(22, Colors.black87, FontWeight.bold),
                  ),
                  Text(
                    "Years exp.",
                    style:
                        fctn(20, Colors.grey.withOpacity(0.7), FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "1550",
                    style: fctn(22, Colors.black87, FontWeight.bold),
                  ),
                  Text(
                    "Petients",
                    style:
                        fctn(20, Colors.grey.withOpacity(0.7), FontWeight.bold),
                  ),
                ],
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
