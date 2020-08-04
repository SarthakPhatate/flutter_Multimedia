import 'package:flutter/material.dart';
import 'home.dart';
import 'music.dart';
import 'video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => MyHome(),
        '/audio': (_) => MyAudio(),
        '/video': (_) => MyVideo(),
      },
    );
  }
}
