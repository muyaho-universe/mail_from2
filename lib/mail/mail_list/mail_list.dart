import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../mail.dart';

class MailList extends StatefulWidget {
  const MailList(this.title, {Key? key}) : super(key: key);

  String? title;

  @override
  State<MailList> createState() => _MailListState();
}

class _MailListState extends State<MailList> {
  final user = FirebaseAuth.instance.currentUser;

  late QuerySnapshot querySnapshot;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('mail').snapshots(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<Mail> mailDocs = [];
        });
  }
}
