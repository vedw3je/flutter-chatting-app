import 'dart:typed_data';

import 'package:chat_app/widgets/chat_messages.dart';
import 'package:chat_app/widgets/user_image_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:chat_app/widgets/message_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat_app/screens/auth.dart';
import 'package:chat_app/screens/auth.dart';
import 'package:chat_app/widgets/chat_messages.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

final _firebase = FirebaseAuth.instance;
final db = FirebaseFirestore.instance;
final formatter = DateFormat.yMd();

class displaypfp extends StatefulWidget {
  displaypfp({
    super.key,
    required this.userImage,
    required this.username,
    required this.isMe,
  });

  String? userImage;

  final String username;
  final bool isMe;
  //late void Function(File pickedImage) onPickImage;

  @override
  State<displaypfp> createState() => _displaypfpState();
}

class _displaypfpState extends State<displaypfp> {
  File? image;
  String address = '';
  var imagePicker;
  var type;
  final User = FirebaseAuth.instance.currentUser;
  var birthdate = '';
  bool changedp = true;
  DateTime? _selectedDate;

  getemail() {
    final email = FirebaseAuth.instance.currentUser!.email;
    return email;
  }

  @override
  void initState() {
    super.initState();

    //imagePicker = new ImagePicker();
  }

  _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 90, now.month, now.day);

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );

    setState(() {
      _selectedDate = pickedDate!;
    });

    return _selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        elevation: 15,
        backgroundColor: const Color.fromARGB(255, 0, 33, 59),
        title: const Text(
          'Profile',
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                color: const Color.fromARGB(255, 0, 33, 59),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              height: 260,
              width: double.infinity,
              child: GestureDetector(
                onTap: () async {
                  var source = type == ImageSource.camera
                      ? ImageSource.camera
                      : ImageSource.gallery;
                  final image = await imagePicker.pickImage(
                    source: source,
                    imageQuality: 50,
                    preferredCameraDevice: CameraDevice.front,
                  );
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(widget.userImage!),
                  radius: 125,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'ACCOUNT INFO',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(10),
              surfaceTintColor: Color.fromARGB(255, 0, 102, 180),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.person_rounded, size: 75),
                  Padding(padding: EdgeInsets.all(8)),
                  Column(
                    children: [
                      const Text(
                        'NAME',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(widget.username),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            if (widget.isMe)
              Card(
                elevation: 10,
                margin: const EdgeInsets.all(10),
                surfaceTintColor: Color.fromARGB(255, 0, 102, 180),
                child: Row(
                  children: [
                    const Icon(Icons.email, size: 75),
                    Padding(padding: EdgeInsets.all(7)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'EMAIL ADDRESS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          getemail(),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            const SizedBox(
              height: 15,
            ),
            if (widget.isMe)
              const Card(
                elevation: 10,
                margin: EdgeInsets.all(10),
                surfaceTintColor: Color.fromARGB(255, 0, 102, 180),
                child: Row(
                  children: [
                    Icon(Icons.phone_android_rounded, size: 75),
                    Padding(padding: EdgeInsets.all(7)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MOBILE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '9082534992',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            const SizedBox(
              height: 15,
            ),
            if (widget.isMe)
              Card(
                elevation: 10,
                margin: EdgeInsets.all(10),
                surfaceTintColor: Color.fromARGB(255, 0, 102, 180),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.calendar_month_rounded),
                      onPressed: () {
                        setState(() {
                          _presentDatePicker();
                        });
                      },
                      iconSize: 75,
                    ),
                    Padding(padding: EdgeInsets.all(7)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'DATE OF BIRTH',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          _selectedDate == null
                              ? 'Enter your Birthdate'
                              : formatter.format(_selectedDate!),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            const SizedBox(
              height: 16,
            ),
            TextButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  }
                  return Colors.red;
                }),
              ),
              onPressed: widget.isMe
                  ? () {
                      _firebase.signOut();
                      Navigator.of(context).pop(_selectedDate);
                    }
                  : () {
                      Navigator.of(context).pop(_selectedDate);
                    },
              icon: widget.isMe
                  ? const Icon(Icons.exit_to_app_rounded, color: Colors.white)
                  : const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
              label: widget.isMe
                  ? const Text(
                      'Signout',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  : const Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
