import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'basket_store.dart';

class BasketPage extends StatefulWidget {
  final String title;
  const BasketPage({Key? key, this.title = 'BasketPage'}) : super(key: key);
  @override
  BasketPageState createState() => BasketPageState();
}

class BasketPageState extends State<BasketPage> {
  final BasketStore store = Modular.get();

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
