import 'package:flutter/cupertino.dart';

class helpers{

  void bgcolor(){
      Container(
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
      );
  }
}