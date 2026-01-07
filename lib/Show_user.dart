import 'package:flutter/material.dart';

class AllUsers extends StatelessWidget {
  AllUsers({super.key, required this.all_user});
  List all_user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Users"), centerTitle: true),
      body: ListView.builder(
        itemCount: all_user.length,
        itemBuilder: (context, i) =>
            Center(child: ListTile(title: Text(all_user[i]))),
      ),
    );
  }
}
