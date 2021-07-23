import 'package:flutter/material.dart';

class ConfigurationPage extends StatefulWidget {
  final String? id;
  ConfigurationPage({
    Key? key,
    this.id,
  }) : super(key: key);

  @override
  _ConfigurationPageState createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hi! ConfigurationPage inside StartModule. The ID is: ${widget.id}'),
      ],
    );
  }
}
