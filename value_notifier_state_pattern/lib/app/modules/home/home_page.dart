import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:value_notifier_state_pattern/app/modules/home/home_state.dart';
import 'package:value_notifier_state_pattern/app/modules/home/home_store.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController controller;
  final HomeStore store = Modular.get<HomeStore>();
  final ValueNotifier<String> reactivity = ValueNotifier("");

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change name'),
      ),
      body: ValueListenableBuilder<HomeState>(
        valueListenable: store,
        builder: (context, value, _) {
          if (value is HomeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (value is HomeLoaded) {
            return Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: value.names.length,
                  itemBuilder: (context, index) {
                    return Text(value.names[index]);
                  },
                  separatorBuilder: (context, index) => const Divider(),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextFormField(
                    onChanged: (value) {
                      reactivity.value = value;
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ValueListenableBuilder<String>(
                  valueListenable: reactivity,
                  builder: (context, value, _) {
                    return Text(value);
                  },
                )
              ],
            );
          }

          return const Text("Error!");
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.changeUserName(controller.text);
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
