import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/models/user_model.dart';

class UserListItem extends StatelessWidget {
  final DocumentSnapshot data;
  final BuildContext context;

  UserListItem(this.context, this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: ValueKey(Record.fromSnapshot(data).name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(Record.fromSnapshot(data).name),
          trailing: Text(Record.fromSnapshot(data).votes.toString()),
          onTap: () => print(Record.fromSnapshot(data)),
        ),
      ),
    );
  }
}
