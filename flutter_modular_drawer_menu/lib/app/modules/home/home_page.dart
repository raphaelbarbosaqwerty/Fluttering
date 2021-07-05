import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';
import 'widgets/drawer_custom.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCustom(),
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HomePage'),
          ],
        ),
      ),
    );
  }
}
