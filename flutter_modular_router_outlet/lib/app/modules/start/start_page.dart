import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_router_outlet/app/modules/start/start_store.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key? key, this.title = 'StartPage'}) : super(key: key);
  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  final StartStore store = Modular.get();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RouterOutlet(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.currentIndex++;
          if (store.currentIndex == 0) {
            Modular.to.navigate('/start/configuration/1');
          } else if (store.currentIndex == 1) {
            Modular.to.navigate('/start/profile/1/');
          } else if (store.currentIndex == 2) {
            Modular.to.navigate('/start/users');
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
