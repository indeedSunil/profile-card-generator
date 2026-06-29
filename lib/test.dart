import 'package:flutter/material.dart';
import 'package:profile_card_generator/screens/home_screen/widgets/quick_action.dart';
import 'package:profile_card_generator/universal/widgets/button.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: QuickAction()));
  }
}
