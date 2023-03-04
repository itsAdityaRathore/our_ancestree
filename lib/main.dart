import 'package:flutter/material.dart';

import 'widgets/index.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          color: Colors.amber,
        ),
        CustomCard(
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.9,
          ),
        )
      ],
    ));
  }
}
