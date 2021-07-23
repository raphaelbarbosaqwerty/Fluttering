import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  const MePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Me page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Me page'),
          ],
        ),
      ),
    );
  }
}
