import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pooja Master Service',
      home: Scaffold(
        appBar: AppBar(title: const Text('Pooja Master Service')),
        body: const Center(child: Text('Hello from pooja-master-service')),
      ),
    );
  }
}
