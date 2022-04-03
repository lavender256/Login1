import 'package:flutter/material.dart';
import 'package:login1/colors.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final Icon icon;
  final bool isPassword;

  MyTextField({this.title, this.icon, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height*.08,
      child: TextField(
        decoration: InputDecoration(
            hintText: title,
            hintStyle: TextStyle(color: mainColor, fontWeight: FontWeight.w500),
            prefixIcon: icon,
        suffixIcon: isPassword?Icon(Icons.remove_red_eye,color: mainColor,):SizedBox.shrink(),
    filled: true,
        enabledBorder: InputBorder.none),
      ),
    );
  }
}
