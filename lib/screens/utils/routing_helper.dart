import 'package:flutter/material.dart';
import 'package:profile_card_generator/screens/create_screen/create_screen.dart';
import 'package:profile_card_generator/screens/edit_screen/edit_screen.dart';
import 'package:profile_card_generator/screens/home_screen/home_screen.dart';
import 'package:profile_card_generator/screens/share/share_screen.dart';
import 'package:profile_card_generator/screens/view_screen/view_screen.dart';

class RoutingHelper extends StatefulWidget {
  const RoutingHelper({super.key});

  @override
  State<RoutingHelper> createState() => _RoutingHelperState();
}

class _RoutingHelperState extends State<RoutingHelper> {
  static int _currentIndex = 0;
  static List<Widget> screens = [
    HomeScreen(),
    CreateScreen(),
    ViewScreen(),
    EditScreen(),
    ShareScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) => {
          setState(() {
            _currentIndex = value;
          }),
        },
        selectedIndex: _currentIndex,
        backgroundColor: Colors.white,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline),
            label: "Create",
          ),
          NavigationDestination(
            icon: Icon(Icons.remove_red_eye),
            label: "View",
          ),
          NavigationDestination(
            icon: Icon(Icons.edit_note_rounded),
            label: "Edit",
          ),
          NavigationDestination(
            icon: Icon(Icons.mobile_screen_share_rounded),
            label: "Share",
          ),
        ],
      ),
    );
  }
}
