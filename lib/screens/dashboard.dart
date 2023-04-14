import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome".toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(25),
          color: Colors.blueAccent,
          border: Border.all(color: Colors.red.shade600, width: 6.0),
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage("images/thumbsup.png"),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 7,
              spreadRadius: 5,
              offset: Offset(4, 5),
            )
          ],
        ),

        // constraints: BoxConstraints(),
        // color: Colors.blueAccent,
        width: 350.0,
        height: 150.0,
        child: Text("Text",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
      ),
      //  Center(
      //     child: IconButton(
      //   icon: Icon(
      //       // Icons.alt_route_rounded,
      //       FontAwesomeIcons.nodeJs),
      //   onPressed: () {},
      //   iconSize: 100.0,
      //   color: Colors.amber,
      //   splashColor: Colors.white,
      //   highlightColor: Colors.red,
      // )),
      //Center(
      //   child: Image.asset("images/thumbsup.png",
      //       height: 150.0, width: 150.0, fit: BoxFit.contain),
      // )
    );

    //Center(
    //     // child: Text("Random value is: ${getNumber()}",
    //     //     style: TextStyle(
    //     //       fontSize: 30.0,
    //     //       color: Color(0xff0e2352),
    //     //       backgroundColor: Color(0xffea6565),
    //     //     ))
    //     child: ));
  }
}

int getNumber() {
  return Random().nextInt(100);
}
