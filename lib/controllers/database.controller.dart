import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DatabaseService {
  final String id;
  DatabaseService({this.id});

  final CollectionReference usercolleciton =
      FirebaseFirestore.instance.collection('user_data');
  final CollectionReference goalcolleciton =
      FirebaseFirestore.instance.collection('goal');
  final CollectionReference challengcolleciton =
      FirebaseFirestore.instance.collection('challenges_data');

  User user = FirebaseAuth.instance.currentUser;

  Future addusertodb(String email, String name, String password) async {
    return await usercolleciton
        .doc(id)
        .set({'email': email, 'name': name, 'password': password, 'uid': id});
  }
}
