import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:minimalapp/chatpage/chatpage.dart';
import 'package:minimalapp/dashboard/dashboardpage.dart';
import 'package:minimalapp/homepage/homepage.dart';
import 'package:minimalapp/profilepage/profile.dart';
import 'package:minimalapp/searchpage.dart';

class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int mycurrentindex = 0;

  List pages = [
    searchpage(),
    dashboardpage(),
    chatpage(),
    profilepage()
  ];

  @override
  Widget build(BuildContext context) {
    // 1. Pooray layout ko Container se wrap kiya taake gradient background har jagah apply ho
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFF0DCCC),
            Color(0xFFE8B4A0),
          ],
        ),
      ),
      child: Scaffold(
        // 2. Scaffold ka background transparent kiya taake peeche wala gradient nazar aaye
        backgroundColor: Colors.transparent,

        // 3. Is property se body extend hokar navigation bar ke peeche tak chali jati hai
        extendBody: true,

        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(bottom: 30, left: 30, right: 30), // Top margin hata diya taake spacing behtar ho
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4), // Opacity thodi kam ki taake shadow natural lage
                blurRadius: 13,
                spreadRadius: 2,
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30), // Border radius syntax fix kiya
            child: BottomNavigationBar(
              backgroundColor: Colors.white, // Navigation bar ka apna color solid white rakha
              selectedItemColor: Colors.deepOrange,
              unselectedItemColor: Colors.black,
              selectedLabelStyle: const TextStyle(fontSize: 12, height: 1.5),
              unselectedLabelStyle: const TextStyle(fontSize: 12, height: 1.5),
              currentIndex: mycurrentindex,
              onTap: (index) {
                setState(() {
                  mycurrentindex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: FaIcon(FontAwesomeIcons.houseFire),
                ), label: "Home"),
                BottomNavigationBarItem(icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: FaIcon(FontAwesomeIcons.grip),
                ), label: "Dashboard"),
                BottomNavigationBarItem(icon: Padding(
                  padding:  EdgeInsets.only(top: 10),
                  child: FaIcon(FontAwesomeIcons.rocketchat),
                ), label: "Chat"),
                BottomNavigationBarItem(icon: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: FaIcon(FontAwesomeIcons.userTie),
                ), label: "Profile")
              ],
            ),
          ),
        ),
        // Body se gradient wala container ab hata diya hai kyunki woh top par shift ho gaya hai
        body: pages[mycurrentindex],
      ),
    );
  }
}