import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_router_outlet/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Modular.to.navigate('/start/configuration/1');
              },
              child: Text('Enter'),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/register');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
