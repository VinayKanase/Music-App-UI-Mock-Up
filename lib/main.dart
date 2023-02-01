import 'package:flutter/material.dart';
import 'package:ui_example/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      // theme: ThemeData(m),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
