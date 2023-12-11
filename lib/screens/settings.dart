import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() {
    return _settingsState();
  }
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        elevation: 15,
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: const SingleChildScrollView(
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 15)),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Icon(
                  Icons.key,
                  size: 40,
                ),
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.lock, size: 40),
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.face_retouching_natural_outlined, size: 40),
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.chat, size: 40),
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.notification_important, size: 40),
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.language, size: 40),
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.help, size: 40),
                SizedBox(
                  height: 40,
                ),
                Icon(Icons.people, size: 40),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                ),
                Text(
                  'Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Security notifications, change number',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Privacy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Block Contacts, disappearing messages',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Avatar',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Create, edit profile photo',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Chats',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Theme, Wallpapers, Chat History',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Message, Group and Call Tones',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'App Language',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'English (Device Language)',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Help',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Help Center, Contact Us, Privacy Policy',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Invite a Friend',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
