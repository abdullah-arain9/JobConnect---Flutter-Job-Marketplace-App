import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class chatpage extends StatefulWidget {
  const chatpage({super.key});

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  int selectedTab = 0; // 0 = All, 1 = Unread, 2 = Favorite
  static const bgColor = Color(0xFFF5C5B0);        // peach bg


  final List<Map<String, dynamic>> chatsData = [
    {
      "name": "Darlene Robertson",
      "message": "What's the progress on that task?",
      "time": "10:13",
      "image": "https://randomuser.me/api/portraits/men/11.jpg",
      "unreadCount": 2,
      "online": true,
    },
    {
      "name": "Eleanor Pena",
      "message": "No, I can't come tomorrow.",
      "time": "10:13",
      "image": "https://randomuser.me/api/portraits/men/12.jpg",
      "unreadCount": 6,
      "online": true,
    },
    {
      "name": "Annette Black",
      "message": "I went there yesterday",
      "time": "10:13",
      "image": "https://randomuser.me/api/portraits/men/13.jpg",
      "unreadCount": 1,
      "online": true,
    },
    {
      "name": "Kathryn Murphy",
      "message": "Yeah! You're right.",
      "time": "10:13",
      "image": "https://randomuser.me/api/portraits/men/14.jpg",
      "unreadCount": 0,
      "online": false,
    },
    {
      "name": "Theresa Webb",
      "message": "Thank you I will check them out",
      "time": "10:13",
      "image": "https://randomuser.me/api/portraits/men/15.jpg",
      "unreadCount": 0,
      "online": true,
    },
    {
      "name": "Arlene McCoy",
      "message": "IDK what else is there to do",
      "time": "10:13",
      "image": "https://randomuser.me/api/portraits/men/16.jpg",
      "unreadCount": 0,
      "online": false,
    },
    {
      "name": "Brooklyn Simmons",
      "message": "So, what's your plan this weekend?",
      "time": "10:13",
      "image": "https://randomuser.me/api/portraits/men/17.jpg",
      "unreadCount": 0,
      "online": true,
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
                Color(0xFFF5C5B0), // top - peach/pink
                Color(0xFFFFFFFF), // bottom - white
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.8]
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),

                // Top bar: Title + Notification bell
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 40),
                    Text(
                      "Chats",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

                SizedBox(height: 20),

                // Tabs: All / Unread / Favorite / +
                Row(
                  children: [
                    _buildTab("All", 0),
                    SizedBox(width: 10),
                    _buildTab("Unread", 1),
                    SizedBox(width: 10),
                    _buildTab("Favorite", 2),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Icon(Icons.add, size: 18, color: Colors.black54),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                // Chat list
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 20),
                    itemCount: chatsData.length,
                    itemBuilder: (context, index) {
                      final chat = chatsData[index];
                      return _buildChatTile(chat);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Tab Widget
  Widget _buildTab(String title, int index) {
    bool isSelected = selectedTab == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFE8632A) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black54,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  // Single Chat Tile (card style with spacing)
  Widget _buildChatTile(Map<String, dynamic> chat) {
    return Container(
      margin: EdgeInsets.only(bottom: 12), // gap between cards
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6), // card background
        borderRadius: BorderRadius.circular(16), // rounded corners
      ),
      child: Row(
        children: [
          // Avatar with online dot
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(chat["image"]),
              ),
              if (chat["online"])
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
            ],
          ),

          SizedBox(width: 14),

          // Name + message
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat["name"],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  chat["message"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),

          // Time + unread badge
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                chat["time"],
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              SizedBox(height: 8),
              if (chat["unreadCount"] > 0)
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE8632A),
                  ),
                  child: Text(
                    "${chat["unreadCount"]}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}