import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_counter/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Counter();
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Observer(builder: (_) {
            return Text(
              c.value.toString(),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: c.increment,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
