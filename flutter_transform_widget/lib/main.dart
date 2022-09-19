import 'package:flutter/material.dart';
import 'Widget/transform.dart';
import 'Widget/perspective.dart';
import 'Widget/flip_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'FlipPanel',
      routes: {
        'flip_image': (_) => AnimatedImagePage(),
        'flip_clock': (_) => FlipClockPage(),
        'countdown_clock': (_) => CountdownClockPage(),
        'reverse_countdown': (_) => ReverseCountdown(),
      },
      home: FlipPage(),
    );
  }
}
