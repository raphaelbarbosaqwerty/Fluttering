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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RouterOutlet(),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            onTap: (id) {
              store.currentIndex = id;
              if (id == 0) {
                Modular.to.navigate('/start/configuration');
              } else if (id == 1) {
                Modular.to.navigate('/start/profile');
              } else if (id == 2) {
                Modular.to.navigate('/start/users');
              }
            },
            currentIndex: store.currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Configurations',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'Users',
              ),
            ],
          );
        },
      ),
    );
  }
}
