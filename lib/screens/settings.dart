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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 15)),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                IconButton(
                  icon: Icon(Icons.key),
                  onPressed: () {},
                  iconSize: 40,
                ),
                const SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.lock),
                  iconSize: 40,
                ),
                const SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.face_retouching_natural_outlined,
                  ),
                  iconSize: 40,
                ),
                const SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat,
                  ),
                  iconSize: 40,
                ),
                const SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notification_important,
                  ),
                  iconSize: 40,
                ),
                const SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.language,
                  ),
                  iconSize: 40,
                ),
                const SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.help,
                  ),
                  iconSize: 40,
                ),
                const SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.people,
                  ),
                  iconSize: 40,
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
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
                  height: 60,
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
                  height: 60,
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
                  height: 60,
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
                  height: 60,
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
                  height: 60,
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
                  height: 60,
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
                  height: 55,
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
