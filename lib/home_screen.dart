import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/chat_screen.dart';
import 'package:whatsapp_ui/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  List<String> images = [
    "images/profile1.jpg",
    "images/profile2.jpg",
    "images/profile3.jpg",
    "images/profile4.jpg",
    "images/profile5.jpg",
    "images/profile6.jpg",
  ];

  List<String> names = [
    "Christine",
    "Davis",
    "Johnson",
    "Parker",
    "Smith",
    "Kevin",
  ];

  List<String> msgTiming = [
    "Yesterday",
    "12:20",
    "12/04/24",
    "05:23",
    "Yesterday",
    "1:40",
  ];

  List<String> msgs = [
    "Hi, how are you?",
    "Where are you?",
    "Hello dear, are you all right",
    "It is nice to meet you",
    "I want to meet you",
    "Good bye",
  ];

  List<bool> msgRead = [
    true,
    true,
    false,
    true,
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Custom AppBar
            Padding(
              padding: EdgeInsets.only(top: 40, left: 15, bottom: 15),
              child: Row(
                children: [
                  Text(
                    "WhatsApp",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1DA75E),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 28,
                    ),
                  ),
                  PopupMenuButton(
                    onSelected: (selected) {
                      if (selected == 5) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingsScreen(),
                          ),
                        );
                      }
                    },
                    elevation: 10,
                    iconSize: 28,
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Text(
                          "New Group",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text(
                          "New broadcast",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Linked devices",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Starred messages",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Search Container
            Container(
              margin: EdgeInsets.only(bottom: 15, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF6F5F3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search...",
                  border: InputBorder.none,
                ),
              ),
            ),
            // Archived
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.archive_outlined,
                    size: 30,
                  ),
                  SizedBox(width: 25),
                  Text(
                    "Archived",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "39",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF1DA75E),
                    ),
                  ),
                ],
              ),
            ),
            // Chats
            ListView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(),
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      maxRadius: 28,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text(
                      names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      msgs[index],
                      style: TextStyle(
                        color: Color(0xFF636F75),
                      ),
                    ),
                    trailing: msgRead[index]
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                msgTiming[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF1DA75E),
                                ),
                              ),
                              SizedBox(height: 6),
                              Container(
                                alignment: Alignment.center,
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1DA75E),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        : Text(
                            msgTiming[index],
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF1DA75E),
        child: Center(
          child: Image.asset("images/send.jpg"),
        ),
      ),
    );
  }
}
