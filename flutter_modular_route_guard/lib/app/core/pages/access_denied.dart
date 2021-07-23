import 'package:flutter/material.dart';

class AccessDenied extends StatelessWidget {
  const AccessDenied({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Access Denied'),
      ),
      body: Center(
        child: Text('Access Denied!'),
      ),
    );
  }
}
