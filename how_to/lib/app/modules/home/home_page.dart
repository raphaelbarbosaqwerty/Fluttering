import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:how_to/app/modules/home/model/user_model.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Modular.to.navigate(
                '/',
              );
            },
            child: Text('Logout'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed(
            '/home/user/Kuringa/3333/12',
            arguments: UserModel(id: 1, name: 'Raphael'),
          );
          // Modular.to.navigate('/');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
