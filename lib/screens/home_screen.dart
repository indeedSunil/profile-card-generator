import 'package:flutter/material.dart';
import 'package:profile_card_generator/universal/widgets/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            globalKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color: Color(0xff006B5F)),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Profile Card Generator",
          style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color(0xff0B1C30),
          ),
        ),
      ),
      drawer: Drawer(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(height: 30),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                fontSize: 39,
              ),
              children: [
                TextSpan(text: "Craft your digital"),
                TextSpan(
                  text: " identity",
                  style: TextStyle(color: Color(0xff006B5F)),
                ),
                TextSpan(text: " in minutes."),
              ],
            ),
          ),
          SizedBox(height: 40),
          CustomButton(onTap: () {}),
        ],
      ),
    );
  }
}
