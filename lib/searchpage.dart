import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class searchpage extends StatefulWidget {
  const searchpage({super.key});

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  final List<Map<String, dynamic>> jobsData = [
    {
      "company": "Creliq-XPO",
      "time": "2h ago",
      "title": "Delivery man for 2 days",
      "tags": ["On-site", "Dhaka", "4 AM - 2 PM"],
      "applied": "12 Applied",
      "salary": "200-250 P",
    },
    {
      "company": "TechCorp-PK",
      "time": "1h ago",
      "title": "Flutter Developer - Remote",
      "tags": ["Remote", "Karachi", "9 AM - 5 PM"],
      "applied": "8 Applied",
      "salary": "150-200K",
    },
    {
      "company": "Spexify Technology",
      "time": "3h ago",
      "title": "UI/UX Designer Needed",
      "tags": ["On-site", "Lahore", "10 AM - 6 PM"],
      "applied": "15 Applied",
      "salary": "80-120K",
    },
    {
      "company": "Arbisoft",
      "time": "4h ago",
      "title": "Backend Engineer - Node.js",
      "tags": ["Hybrid", "Islamabad", "9 AM - 6 PM"],
      "applied": "20 Applied",
      "salary": "180-220K",
    },
    {
      "company": "Devsinc",
      "time": "5h ago",
      "title": "QA Automation Tester",
      "tags": ["On-site", "Karachi", "8 AM - 4 PM"],
      "applied": "10 Applied",
      "salary": "100-140K",
    },
    {
      "company": "Folio3",
      "time": "6h ago",
      "title": "Mobile App Developer",
      "tags": ["Remote", "Lahore", "Flexible"],
      "applied": "18 Applied",
      "salary": "160-210K",
    },
    {
      "company": "Systems Limited",
      "time": "8h ago",
      "title": "Data Analyst",
      "tags": ["On-site", "Karachi", "9 AM - 5 PM"],
      "applied": "9 Applied",
      "salary": "90-130K",
    },
    {
      "company": "Netsol Technologies",
      "time": "10h ago",
      "title": "Project Coordinator",
      "tags": ["Hybrid", "Lahore", "9 AM - 6 PM"],
      "applied": "6 Applied",
      "salary": "70-100K",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF5C5B0),
              Color(0xFFFFFFFF),
            ],
            stops: [0.0, 0.8],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),

                // Top bar: Back + Title
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            blurRadius: 8,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Icon(Icons.arrow_back_ios_new, size: 16),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Search",
                          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(width: 36),
                  ],
                ),

                SizedBox(height: 20),

                // Search bar
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 8,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.black54),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Researcher",
                            hintStyle: TextStyle(color: Colors.black38, fontSize: 14),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.tune, color: Colors.black54),
                    ],
                  ),
                ),

                SizedBox(height: 16),

                // Filter chips
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildFilterChip("Job Type"),
                      SizedBox(width: 10),
                      _buildFilterChip("Date Posted"),
                      SizedBox(width: 10),
                      _buildFilterChip("Salary"),
                      SizedBox(width: 10),
                      _buildFilterChip("Location"),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Results header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Results (${jobsData.length})",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.sort, color: Colors.black54),
                  ],
                ),

                SizedBox(height: 14),

                // Job list - dynamic with all jobsData
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 20),
                    itemCount: jobsData.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _buildJobCard(jobsData[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 13,
              spreadRadius: 2,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BottomNavigationBar(
            currentIndex: 0,
            selectedItemColor: Color(0xFFE8632A),
            unselectedItemColor: Colors.black54,
            onTap: (index) {},
            items: [
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.house, size: 20),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.grip, size: 20),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.comment, size: 20),
                label: "Chats",
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user, size: 20),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterChip(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 6,
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 13, color: Colors.black87)),
          SizedBox(width: 4),
          Icon(Icons.keyboard_arrow_down, size: 16, color: Colors.black54),
        ],
      ),
    );
  }

  // Now takes job data and builds card dynamically
  Widget _buildJobCard(Map<String, dynamic> job) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
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
                  Text(job["company"], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                  SizedBox(width: 8),
                  Text(job["time"], style: TextStyle(fontSize: 12, color: Colors.black38)),
                ],
              ),
              Icon(Icons.favorite_border, size: 20, color: Colors.black45),
            ],
          ),
          SizedBox(height: 8),
          Text(
            job["title"],
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Row(
            children: List.generate(job["tags"].length, (i) {
              return Padding(
                padding: EdgeInsets.only(right: 8),
                child: _buildTag(job["tags"][i]),
              );
            }),
          ),
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(job["applied"], style: TextStyle(fontSize: 13, color: Colors.black54)),
              Row(
                children: [
                  Icon(Icons.monetization_on_outlined, size: 16, color: Colors.black54),
                  SizedBox(width: 4),
                  Text(job["salary"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                ],
              ),
            ],
          ),
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
}