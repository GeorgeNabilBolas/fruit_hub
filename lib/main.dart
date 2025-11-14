import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @Preview()
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FruitHUB',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FruitHUB'),
        ),
      ),
    );
  }
}
