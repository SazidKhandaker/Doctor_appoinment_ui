import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorDescription extends StatelessWidget {
  const DoctorDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Demography",
            style: fctn(22, Colors.black45.withOpacity(0.7), FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            margin: EdgeInsets.only(left: 16),
            child: Stack(
              children: [
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                        text:
                            "Dr. Prrrin P is board certified in Neurology by\nthe American Board of Psychiatry and Neu-\nrology.His subspecialities/interests.. ",
                        style: fctn(
                            18, Colors.grey.withOpacity(0.7), FontWeight.bold)),
                    TextSpan(
                        text: "more",
                        style: fctn(20, Colors.blue.shade300, FontWeight.bold))
                  ],
                )),
                Positioned(
                  bottom: -3,
                  right: 10,
                  child: Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 14, bottom: 12),
          child: Text(
            "Location",
            style: fctn(22, Colors.black45.withOpacity(0.7), FontWeight.bold),
          ),
        ),
      ],
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
