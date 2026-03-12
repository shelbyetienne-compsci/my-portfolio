import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'Could not launch $urlString';
    }
  }

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
                  _launchUrl("https://github.com/shelbyetienne-compsci");
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
                  _launchUrl("https://www.linkedin.com/in/shelb23/");
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
