import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override

  bool isOn = false;

  static const bgColor = Color(0xFFF5C5B0);        // peach bg
  static const cardColor = Color(0xFFFFFFFF);       // white card
  static const headingColor = Color(0xFF3D2B1F);    // dark brown
  static const subtitleColor = Color(0xFF8B7355);   // warm gray
  static const dividerColor = Color(0xFFC4B9A8);    // light gray
  static const darkText = Color(0xFF2D2D2D);        // charcoal
// Orange accent (buttons, active icons)
  static const accentColor = Color(0xFFE8632A);     // orange

  //profilepage pp= profilepage();
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFF5C5B0), // top - peach/pink
                Color(0xFFFFFFFF), // bottom - white
              ],
            stops: [0.0,0.7],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80,right: 20,left: 20),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              //profile and icon section
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.1,),
                  Text("Profile",style: TextStyle(fontSize: 27,fontWeight: .bold),),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:bgColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 13,
                          offset: Offset(1, 5),
                          spreadRadius:3,
                        )
                      ]
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.bell,)),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
              //PROFILE DATA
              Center(
                child: Stack(

                  alignment: Alignment.topCenter,
                  clipBehavior: .none,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      height: MediaQuery.of(context).size.height*0.25 ,
                      width: MediaQuery.of(context).size.width*.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 5),
                              blurRadius: 13,
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 3,
                            )
                          ]
                        ),
                        child: Column(
                          mainAxisAlignment: .center,
                          children: [
                            SizedBox(height: 20,),
                            Text("M.Abdullah", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: .center,
                              children: [
                                FaIcon(FontAwesomeIcons.locationDot,color: Colors.black.withOpacity(0.4),size: 12,),
                                SizedBox(width: 5,),
                                Text("Karachi,Pakistan", style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 13)),

                              ],
                            ),
                            SizedBox(height: 10,),
                            Column(
                              mainAxisAlignment: .center,
                              children: [
                                Row(
                                  mainAxisAlignment: .spaceEvenly,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height*0.09,
                                      width: MediaQuery.of(context).size.width*0.20,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          color: bgColor.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: bgColor.withOpacity(0.6),
                                            spreadRadius: 3,
                                            blurRadius: 13,
                                            offset: Offset(1, 5),
                                          )
                                        ]
                                      ),
                                      child: Column(
                                        children: [
                                          Text("Rating",style: TextStyle(fontSize: 14,fontWeight: .w800,color: Colors.black.withOpacity(0.5)),),
                                          SizedBox(height: 10,),
                                          Row(children: [
                                            FaIcon(FontAwesomeIcons.star,size: 20,color: Colors.deepOrange),
                                            SizedBox(width: 4,),
                                            Text("4.5",style: TextStyle(fontSize: 17),)
                                          ],)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height*0.09,
                                      width: MediaQuery.of(context).size.width*0.20,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          color: bgColor.withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: bgColor.withOpacity(0.6),
                                              spreadRadius: 3,
                                              blurRadius: 13,
                                              offset: Offset(1, 5),
                                            )
                                          ]
                                      ),
                                      child: Column(
                                        children: [
                                          Text("RANK",style: TextStyle(fontSize: 14,fontWeight: .w800,color: Colors.black.withOpacity(0.5)),),
                                          SizedBox(height: 10,),
                                          Row(children: [
                                            FaIcon(FontAwesomeIcons.arrowUpWideShort,size: 20,color: Colors.red,fontWeight:.bold,),
                                            SizedBox(width: 6,),
                                            Text("15%",style: TextStyle(fontSize: 17),)
                                          ],)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height*0.09,
                                      width: MediaQuery.of(context).size.width*0.20,
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          color: bgColor.withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: bgColor.withOpacity(0.6),
                                              spreadRadius: 3,
                                              blurRadius: 13,
                                              offset: Offset(1, 5),
                                            )
                                          ]
                                      ),
                                      child: Column(
                                        children: [
                                          Text("JOBS",style: TextStyle(fontSize: 14,fontWeight: .w800,color: Colors.black.withOpacity(0.5)),),
                                          SizedBox(height: 10,),
                                          Row(children: [
                                            FaIcon(FontAwesomeIcons.briefcase,size: 20,color: Colors.green),
                                            SizedBox(width: 6,),
                                            Text("20",style: TextStyle(fontSize: 17),)
                                          ],)
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                            ]
                            ),

                          ],
                        )
                    ),
                    Positioned(
                      top:0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 5),
                              blurRadius: 13,
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 3,
                            )
                          ]

                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/1.jpg"),
                          radius: 50,
                          //backgroundColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),

              //SWITCH TO HIRE MODE SECTION
              Container(
                  width: MediaQuery.of(context).size.width*1,
                  height: MediaQuery.of(context).size.height*0.06,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color:Colors.grey.withOpacity(0.15) ,
                      offset: Offset(1, 5),
                      blurRadius: 13,
                      spreadRadius: 3,
                    )
                  ]
                ),
                child:ListTile(
                  leading: FaIcon(FontAwesomeIcons.rotate),
                  title: Text("Switch to Hire Mode"),
                  trailing: Switch(
                  value: isOn,
                  onChanged: (val) {
                    setState(() {
                      isOn = val;
                    });
                  },
                ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Text("General",style: TextStyle(fontWeight: .bold,color: Colors.black.withOpacity(0.6)),),
              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
              //GENERAL SECTION
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius:3 ,
                      blurRadius: 13,
                      color: Colors.grey.withOpacity(0.3),
                      offset:Offset(1, 5)
                    )
                  ]
                ),
                height:MediaQuery.of(context).size.height*0.24,
                width: MediaQuery.of(context).size.width*1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Column(
                    children: [
                      Container(
                        child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.user),
                          title:Text("Profile Setting"),
                          trailing:IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleRight)),

                        ),
                      ),
                      Divider(
                        indent: 50,
                        color: Colors.black.withOpacity(0.14),
                      ),
                      Container(
                        child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.locationCrosshairs),
                          title:Text("Location"),
                          trailing:IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleRight)),

                        ),
                      ),
                      Divider(
                        indent: 50,
                        color: Colors.black.withOpacity(0.14),
                      ),
                      Container(
                        child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.wallet),
                          title:Text("Manage Withdrawals"),
                          trailing:IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.angleRight)),

                        ),
                      ),



                    ],
                  ),
                ),
              )


            ],
          ),
        ),

      ),
    );
  }
}
