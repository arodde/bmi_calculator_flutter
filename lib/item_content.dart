import 'package:flutter/material.dart';

const TextStyle labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const double sizeIcon = 80.0;
const double heightSizeBox = 18.0;

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: sizeIcon,
          ),
          SizedBox(
            height: heightSizeBox,
          ),
          Text(
            label,
            style: labelTextStyle,
          ),
        ]);
  }
}
