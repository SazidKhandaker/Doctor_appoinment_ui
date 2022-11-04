import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MapLocation extends StatelessWidget {
  const MapLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.400,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("images/Map.webp"), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
