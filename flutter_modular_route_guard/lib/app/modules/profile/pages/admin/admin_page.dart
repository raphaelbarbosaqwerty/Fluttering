import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  final String title;
  const AdminPage({Key? key, this.title = 'AdminPage'}) : super(key: key);
  @override
  AdminPageState createState() => AdminPageState();
}

class AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
