import 'package:flutter/material.dart';

class QuickAction extends StatelessWidget {
  const QuickAction({
    super.key,
    required this.color,
    required this.icon,
    required this.headText,
    required this.subText,
  });
  final Color color;
  final Icon icon;
  final String headText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 180,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(22),
              ),
              child: icon,
            ),
            SizedBox(height: 10),
            Text(
              headText,
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subText,
              style: TextStyle(fontSize: 18, fontFamily: 'Manrope'),
            ),
          ],
        ),
      ),
    );
  }
}
