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

  Future addchallengetodb(String name, String subject, DateTime startdate,
      DateTime finishdate, String goal, String team) async {
    return await challengcolleciton.doc().set({
      'challenge_name': name,
      'challenge_subject': subject,
      //needs to be updated
      'creater_name': user.displayName,
      'creator_uid': id,
      'finish_date': finishdate,
      //needs to be updated
      'goal_id': goal,
      'start_date': finishdate,
      'team_names': team
    });
  }

  Future addgoaltodb(
      String name, String points, bool timestamp, bool pic) async {
    return await goalcolleciton.doc().set({
      'goal_name':name,
      'points':points,
      'timestamp':timestamp,
      'pictures':pic
    });
  }
}
