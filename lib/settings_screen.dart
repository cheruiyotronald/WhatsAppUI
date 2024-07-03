import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profile1.jpg",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ronald",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Hey there. I am using WhatsApp",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.qr_code,
                      color: Color(0xFF1DA75E),
                      size: 28,
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF1DA75E),
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Account",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Security notifications, change number",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.lock_outline),
                ),
                title: Text(
                  "Privacy",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Block contacts, disappearing messages",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message_outlined),
                ),
                title: Text(
                  "Chats",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Theme, wallpapers, chat history",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications_outlined),
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Message, group & call tones",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text(
                  "Storage and data",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Network usage, auto-download",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "Help centre, contact us , privacy policy",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.security_update_good_outlined),
                ),
                title: Text(
                  "Invite a friend",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.people_alt_outlined),
                ),
                title: Text(
                  "App updates",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text(
                      "from",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/meta.png",
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(width: 2),
                        Text(
                          "Meta",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
