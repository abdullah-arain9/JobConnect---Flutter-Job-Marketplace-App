import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class dashboardpage extends StatefulWidget {
  const dashboardpage({super.key});

  @override
  State<dashboardpage> createState() => _dashboardpageState();
}

class _dashboardpageState extends State<dashboardpage> {
  @override

  static const bgColor = Color(0xFFF5C5B0);        // peach bg
  static const cardColor = Color(0xFFFFFFFF);       // white card
  static const headingColor = Color(0xFF3D2B1F);    // dark brown
  static const subtitleColor = Color(0xFF8B7355);   // warm gray
  static const dividerColor = Color(0xFFC4B9A8);    // light gray
  static const darkText = Color(0xFF2D2D2D);        // charcoal
// Orange accent (buttons, active icons)
  static const accentColor = Color(0xFFE8632A);     // orange

  Widget _buildFilterTab( String title, int index) {
    int selectedTab = 0;
    bool isSelected = selectedTab == index;
    return GestureDetector(
      onTap: () => setState(() => selectedTab = index),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              color: isSelected ? Color(0xFFE8632A) : Colors.black54,
            ),
          ),
          SizedBox(height: 4),
          if (isSelected)
            Container(height: 2, width: 40, color: Color(0xFFE8632A)),
        ],
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text, style: TextStyle(fontSize: 11, color: Colors.black54)),
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFF5C5B0), // top - peach/pink
                Color(0xFFFFFFFF), // bottom - white
              ],
              stops: [0.0,0.7],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 80,right: 20,left: 20),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [

                    SizedBox(width: MediaQuery.of(context).size.width*.1,),
                    Text("Dashboard",style: TextStyle(fontSize: 27,fontWeight: .bold),),
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
                //overview and rating section
                SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                Row(
                  children: [
                    //OVERVIEW TAB
                   Expanded(
                     flex: 2,
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           boxShadow: [
                             BoxShadow(
                               offset: Offset(1, 5),
                               blurRadius: 13,
                               color: Colors.grey.withOpacity(0.4),
                               spreadRadius: 3,
                             )
                           ],
                           borderRadius: BorderRadius.circular(20),

                         ),
                         height: MediaQuery.of(context).size.height*.22,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                           child: Column(
                             children: [
                               //Overview section
                              Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  Text(
                                    "Overview",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.more_horiz, size: 25),
                                ],
                              ),
                               SizedBox(height: 10),
                               //TOP 15% SECTION
                               Container(
                                 padding: EdgeInsets.only(left: 15,top: 3,bottom: 3),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                   color: bgColor,


                                 ),
                                 child: Row(
                                   children: [
                                     Icon(Icons.emoji_events_outlined, size: 17, color: Colors.orange),
                                     SizedBox(width: 6),
                                     Text("You're on top ", style: TextStyle(fontSize: 13, color: Colors.black54)),
                                     Text("15%", style: TextStyle(fontSize: 13, color: Colors.orange, fontWeight: FontWeight.w600)),
                                   ],
                                 ),
                               ),
                               SizedBox(height: MediaQuery.of(context).size.height*.015),
                               CircularPercentIndicator(
                                   radius: 55,
                                 lineWidth: 13,
                                 percent: 0.8,
                                 animation: true,
                                 animationDuration: 1000,
                                 backgroundColor: Color(0xFFE0F2EA), // 👈 light green bg
                                 progressColor: Color(0xFF1FAE7A),
                                 circularStrokeCap: CircularStrokeCap.round,

                                 center: Column(
                                   mainAxisAlignment: .center,
                                   children: [
                                     Text("86%",style: TextStyle(fontWeight: .bold,fontSize: 20),),
                                     Text("Completion",style: TextStyle(fontSize: 12,fontWeight: .w600,color: Colors.black.withOpacity(0.6)),),

                                   ],
                                 ),
                               )

                             ],
                           ),
                         ),



                   )
                   ),
                   SizedBox(width: 10,),
                   Expanded(
                     flex: 1,
                       child: Container(
                           color: Colors.transparent,
                           height: MediaQuery.of(context).size.height*.22,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               //FIRST BOX
                               Expanded(
                                 flex: 1,
                                 child:
                                 Container(
                                   width: MediaQuery.of(context).size.width*.25,
                                   decoration: BoxDecoration(
                                     boxShadow:[
                                       BoxShadow(
                                           spreadRadius:3 ,
                                           blurRadius: 13,
                                           color: Colors.grey.withOpacity(0.3),
                                           offset:Offset(1, 5)
                                       )
                                     ],
                                     borderRadius: BorderRadius.circular(10),
                                     color: Colors.white,
                                   ),
                                   padding: EdgeInsets.only(top: 10,left: 10),
                                   child: Column(
                                     //mainAxisAlignment: .start,
                                     crossAxisAlignment: .start,
                                     children: [
                                       FaIcon(FontAwesomeIcons.briefcase,color: Colors.deepOrange,),
                                       SizedBox(height: 10,),
                                       Text("20 Jobs",style: TextStyle(fontWeight: .bold,fontSize: 16),),
                                       Text("Completed",style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(0.5)),)
                                     ],
                                   ),
                                 ),
                               ),
                               SizedBox(height: 10,),
                               //2ND BOX
                               Expanded(
                                 flex: 1,
                                 child:
                                 Container(
                                   width: MediaQuery.of(context).size.width*.25,
                                   decoration: BoxDecoration(
                                     boxShadow:[
                                       BoxShadow(
                                           spreadRadius:3 ,
                                           blurRadius: 13,
                                           color: Colors.grey.withOpacity(0.3),
                                           offset:Offset(1, 5)
                                       )
                                     ],
                                     borderRadius: BorderRadius.circular(10),
                                     color: Colors.white,
                                   ),
                                   padding: EdgeInsets.only(top: 10,left: 10),
                                   child: Column(
                                     //mainAxisAlignment: .start,
                                     crossAxisAlignment: .start,
                                     children: [
                                       //FaIcon(FontAwesomeIcons.starHalf,color: Colors.deepOrange,),
                                       //SizedBox(height: 10,),
                                       SizedBox(height: 5,),
                                       Text("AVG rating",style: TextStyle(fontWeight: .bold,fontSize: 16),),
                                       SizedBox(height: 5,),
                                       Row(
                                         spacing: 6,
                                         children: [
                                           FaIcon(FontAwesomeIcons.rankingStar,color: Colors.deepOrange,),
                                           Text("4.5",style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.5),fontWeight: .bold),)
                                         ],
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                   )
                   ),

                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.04,),
                //AMOUNT MONEY CONTAINER
                Container(
                  height: MediaQuery.of(context).size.height*.1,
                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  padding: EdgeInsets.only(left: 6),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 53,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius:3 ,
                                blurRadius: 13,
                                color: Colors.grey.withOpacity(0.3),
                                offset:Offset(1, 5)
                            )
                          ]
                        ),
                        padding: EdgeInsets.all(12),
                        child: FaIcon(FontAwesomeIcons.wallet,size: 30,),
                      ),
                      title: Text("Total Income",style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 13),),
                      subtitle: Text("22,870 ",style: TextStyle(fontWeight: .bold,fontSize: 23),),
                      trailing: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.angleRight)),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Filter Tabs
                    Row(

                      children: [
                        _buildFilterTab("All jobs", 0),
                        SizedBox(width: 20),
                        _buildFilterTab("Ongoing", 1),
                        SizedBox(width: 20),
                        _buildFilterTab("Applied", 2),
                        SizedBox(width: 20),
                        _buildFilterTab("Saved", 3),
                      ],
                    ),

                    SizedBox(height: 15),

                    // Job Card
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius:3 ,
                              blurRadius: 13,
                              color: Colors.grey.withOpacity(0.2),
                              offset:Offset(1, 5)
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Company + time + heart
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("TechCorp-PK", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                                  SizedBox(width: 8),
                                  Text("2h ago", style: TextStyle(fontSize: 12, color: Colors.black38)),
                                ],
                              ),
                              Icon(Icons.favorite_border, size: 20, color: Colors.black45),
                            ],
                          ),

                          SizedBox(height: 8),

                          // Job title
                          Text(
                            "Delivery man for 2 days",
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),

                          SizedBox(height: 12),

                          // Tags
                          Row(
                            children: [
                              _buildTag("Remote"),
                              SizedBox(width: 8),
                              _buildTag("Karachi"),
                              SizedBox(width: 8),
                              _buildTag("4 AM - 2 PM"),
                            ],
                          ),

                          SizedBox(height: 14),

                          // Applied + Salary
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("12 Applied", style: TextStyle(fontSize: 13, color: Colors.black54)),
                              Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.moneyBillWave,size: 17,),
                                  SizedBox(width: 4),
                                  Text("150-200K ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Job Card
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            blurRadius: 13,
                            color: Colors.grey.withOpacity(0.2),
                            offset: Offset(1, 5),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Spexify Technology", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                                  SizedBox(width: 8),
                                  Text("1h ago", style: TextStyle(fontSize: 12, color: Colors.black38)),
                                ],
                              ),
                              Icon(Icons.favorite_border, size: 20, color: Colors.black45),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Flutter Developer - Remote", // 👈 changed
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              _buildTag("Remote"),      // 👈 changed
                              SizedBox(width: 8),
                              _buildTag("Karachi"),     // 👈 changed
                              SizedBox(width: 8),
                              _buildTag("9 AM - 5 PM"), // 👈 changed
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("8 Applied", style: TextStyle(fontSize: 13, color: Colors.black54)), // 👈 changed
                              Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.moneyBillWave, size: 17, color: Colors.black54),
                                  SizedBox(width: 4),
                                  Text("150-200K PKR", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)), // 👈 changed
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Job Card
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            blurRadius: 13,
                            color: Colors.grey.withOpacity(0.2),
                            offset: Offset(1, 5),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Arbisoft", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                                  SizedBox(width: 8),
                                  Text("1h ago", style: TextStyle(fontSize: 12, color: Colors.black38)),
                                ],
                              ),
                              Icon(Icons.favorite_border, size: 20, color: Colors.black45),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Flutter Developer - Remote", // 👈 changed
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              _buildTag("Remote"),      // 👈 changed
                              SizedBox(width: 8),
                              _buildTag("Karachi"),     // 👈 changed
                              SizedBox(width: 8),
                              _buildTag("9 AM - 5 PM"), // 👈 changed
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("8 Applied", style: TextStyle(fontSize: 13, color: Colors.black54)), // 👈 changed
                              Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.moneyBillWave, size: 17, color: Colors.black54),
                                  SizedBox(width: 4),
                                  Text("150-200K ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)), // 👈 changed
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
