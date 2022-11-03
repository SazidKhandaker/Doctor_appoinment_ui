import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarSide extends StatelessWidget {
  const AppBarSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Container(
        height: MediaQuery.of(context).size.height * .065,
        width: MediaQuery.of(context).size.width * 0.09,
        decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2, offset: Offset(1, 1), color: Colors.black),
              BoxShadow(
                  blurRadius: 2, offset: Offset(-1, -1), color: Colors.black),
            ],
            borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black54,
            size: 24,
          ),
        ),
      ),
    );
  }
}
