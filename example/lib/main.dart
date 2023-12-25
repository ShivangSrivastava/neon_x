import 'package:flutter/material.dart';
import 'package:neon_x/neon_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Example',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // Using google font
        "Lato".text.lato.make(),

        // Svg as icon
        const NxIcon(
          "icon.svg",
          color: Colors.amber,
        ),

        // Timeline
        const NxTimeLine(
          currentPosition: 0,
          size: 3,
          filledColor: Colors.black,
          lineColor: Colors.white,
        ),
      ]),
    );
  }
}
