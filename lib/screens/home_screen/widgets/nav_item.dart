import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.selected,
    required this.title,
    required this.icon,
  });
  final bool selected;
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: Color(0xff64A8FE).withAlpha(127),
          borderRadius: BorderRadius.circular(10),
        ),
        duration: Duration(seconds: 1),
        child: Column(
          children: [
            icon,
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
