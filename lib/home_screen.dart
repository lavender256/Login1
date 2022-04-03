import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login1/colors.dart';
import 'package:login1/text_field.dart';

import 'borders.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.postimg.cc/NMHmMGwf/space-stars-cloudy-shine-dark.jpg"),fit: BoxFit.cover
          )
        ),
        child: Center(
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height,
                  color: Colors.black.withOpacity(.4),
                ),
                Borders(),
                Positioned(
                  right: size.width*.1,
                  bottom: size.height*.08,
                  child: Container(
                    width: size.width*.25,
                    height: size.height*.07,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: Text("Login",style: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: size.width*.05,color: Colors.black
                      ),),
                    ),
                  ),
                ),
                Positioned(
                    left: size.width*.15,
                    top: size.height*.2,
                    child: RotatedBox(
                  quarterTurns: 3,
                  child: Text("Login",style: TextStyle(
                    color:mainColor,fontSize: size.width*.12,fontWeight: FontWeight.w900
                  ),),
                )),
                Positioned(
                  left: size.width*.15,
                    right: size.width*.15,
                    bottom: size.height*.2,
                    child: Container(
                    height: size.height*.23,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyTextField(title: "Email",icon: Icon(Icons.email,color: mainColor,),),
                          MyTextField(title: "Password",icon: Icon(Icons.lock,color: mainColor,),isPassword: true,)
                        ],
                      ),
                )),
                Positioned(
                    right: size.width*.2,
                    top: size.height*.15,
                    child: FlutterLogo(duration: Duration(seconds: 2),
                      style: FlutterLogoStyle.horizontal,
                      size: size.width*.4,
                    )),

              ],
            )),
      )
    ) ;
  }
}
