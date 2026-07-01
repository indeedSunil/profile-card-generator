import 'package:flutter/material.dart';
import 'package:profile_card_generator/screens/create_screen/create_screen.dart';
import 'package:profile_card_generator/screens/edit_screen/edit_screen.dart';
import 'package:profile_card_generator/screens/home_screen/home_screen.dart';
import 'package:profile_card_generator/screens/share/share_screen.dart';
import 'package:profile_card_generator/screens/view_screen/view_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/create':
        return MaterialPageRoute(builder: (_) => CreateScreen());
      case '/view':
        return MaterialPageRoute(builder: (_) => ViewScreen());
      case '/edit':
        return MaterialPageRoute(builder: (_) => EditScreen());
      case '/share':
        return MaterialPageRoute(builder: (_) => ShareScreen());
      // 1. Added a default case to handle unknown routes safely
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return const Scaffold(
          body: Center(child: Text('Error: Route not found!')),
        );
      },
    );
  } // 2. Added the missing closing bracket for the RouteGenerator class
}
