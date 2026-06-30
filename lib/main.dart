import 'package:flutter/material.dart';
import 'package:profile_card_generator/screens/home_screen/home_screen.dart';
import 'package:profile_card_generator/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}
