import 'package:flutter/material.dart';
import 'package:my_portfolio/colors.dart';

class HeaderWidget extends StatelessWidget {
  final String text;

  const HeaderWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        constraints: BoxConstraints(maxWidth: 200),
        height: kToolbarHeight,
        child: Text(
          text,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
