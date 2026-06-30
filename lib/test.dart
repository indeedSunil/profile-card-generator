import 'package:flutter/material.dart';
import 'package:profile_card_generator/screens/home_screen/home_screen.dart';
import 'package:profile_card_generator/screens/home_screen/widgets/nav_item.dart';
import 'package:profile_card_generator/screens/home_screen/widgets/quick_action.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: TestScreen(),
    );
  }
}
