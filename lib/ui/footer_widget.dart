import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  print("icon clicked");
                },
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/icons/icons8-linkedin-logo-50.png",
                  width: 36,
                ),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () {
                  print("icon clicked");
                },
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/icons/icons8-github-logo-50.png",
                  width: 36,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          const Text("Shelby Etienne © 2026"),
        ],
      ),
    );
  }
}
