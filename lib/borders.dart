import 'package:flutter/material.dart';
import 'package:login1/colors.dart';

class Borders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: size.height * .1,
          child: Container(
            width: size.width * .9,
            height: size.height * .005,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              mainColor.withOpacity(.2),
              mainColor.withOpacity(.4),
                  mainColor.withOpacity(.6),
              mainColor,
              mainColor,
              mainColor,
              mainColor,
              mainColor
            ])),
          ),
        ),
        Positioned(
          right: size.width * .1,
          top: size.height * .1,
          child: Container(
            width: size.height * .005,
            height: size.height * .4,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              mainColor.withOpacity(.2),
              mainColor.withOpacity(.4),
                  mainColor.withOpacity(.6),
              mainColor,
              mainColor,
              mainColor,
              mainColor,
              mainColor
            ], begin: Alignment.bottomCenter)),
          ),
        ),
        Positioned(
          bottom: size.height * .1,
          left: size.width * .1,
          child: Container(
            width: size.width * .9,
            height: size.height * .005,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              mainColor,
              mainColor,
              mainColor,
              mainColor,
              mainColor,
                  mainColor.withOpacity(.6),
              mainColor.withOpacity(.4),
              mainColor.withOpacity(.2),
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
            ])),
          ),
        ),
        Positioned(
          left: size.width * .09,
          bottom: size.height * .1,
          child: Container(
            width: size.height * .005,
            height: size.height * .4,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              mainColor.withOpacity(.2),
              mainColor.withOpacity(.4),
                  mainColor.withOpacity(.6),
              mainColor,
              mainColor,
              mainColor,
              mainColor,
              mainColor
            ], begin: Alignment.topCenter)),
          ),
        )
      ],
    );
  }
}
