import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimalapp/searchpage.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFF5C5B0), // top - peach/pink
                Color(0xFFFFFFFF), // bottom - white
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0,0.65]
          )
        ),
        child: searchpage(),
      ),
    );
  }
}
