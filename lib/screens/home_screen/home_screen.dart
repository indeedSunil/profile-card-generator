import 'package:flutter/material.dart';
import 'package:profile_card_generator/screens/home_screen/widgets/quick_action.dart';
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
      backgroundColor: Color(0xffF5F8FE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            globalKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color: Color(0xff006B5F)),
        ),
        backgroundColor: Color(0xffF5F8FE),
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
          SizedBox(height: 30),

          Row(
            children: [
              Text(
                "Quick Actions",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 10),
              Expanded(child: Divider(color: Colors.grey, thickness: 0.5)),
            ],
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xffF5F8FE),
                  spreadRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),

              crossAxisCount: 2,
              mainAxisExtent: 250,
              shrinkWrap: true,

              children: [
                QuickAction(
                  color: Color(0xff2DD4BF),
                  icon: Icon(
                    Icons.add_circle_outlined,
                    color: Color(0xff00574D),
                    size: 37,
                  ),
                  headText: "Generate",
                  subText: "Create a new card from scratch",
                ),
                QuickAction(
                  color: Color(0xff64A8FE),
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xff003C70),
                    size: 37,
                  ),
                  headText: "View",
                  subText: "Preview your saved identities",
                ),
                QuickAction(
                  color: Color(0xffB4C1B9),
                  icon: Icon(
                    Icons.edit_note_outlined,
                    color: Color(0xff444F49),
                    size: 37,
                  ),
                  headText: "Edit",
                  subText: "Update details and card themes",
                ),
                QuickAction(
                  color: Color(0xffD3E4FE),
                  icon: Icon(
                    Icons.offline_share_rounded,
                    color: Color(0xff0B1C30),
                    size: 37,
                  ),
                  headText: "Export",
                  subText: "Export or share your cards to your peers",
                ),
              ],
            ),
          ),
        ],
      ),
    
    );
  }
}
