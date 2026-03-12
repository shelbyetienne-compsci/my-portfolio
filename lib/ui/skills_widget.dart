import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillsGrid extends StatelessWidget {
  const SkillsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final sectionWidth = constraints.maxWidth;
          final cardWidth = sectionWidth / 3;

          return Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SkillCard("C++", cardWidth, "assets/icons/icons8-c++-96.png"),
                  SkillCard(
                    "Flutter",
                    cardWidth,
                    "assets/icons/icons8-flutter-logo-96.png",
                  ),
                  SkillCard(
                    "Kotlin",
                    cardWidth,
                    "assets/icons/icons8-kotlin-96.png",
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SkillCard("Java", cardWidth, "assets/icons/java.png"),
                  SkillCard(
                    "JavaScript",
                    cardWidth,
                    "assets/icons/java-script.png",
                  ),
                  SkillCard("Python", cardWidth, "assets/icons/python.png"),
                  SkillCard(
                    "TypeScript",
                    cardWidth,
                    "assets/icons/typescript.png",
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SkillCard("Node.js", cardWidth, "assets/icons/icons8-node-js-96.png"),
                  SkillCard("SQL", cardWidth, "assets/icons/icons8-sql-96.png"),
                  SkillCard("Figma", cardWidth, "assets/icons/icons8-figma-96.png"),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final double? width;
  final String title;
  final String iconPath;

  const SkillCard(this.title, this.width, this.iconPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: width,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconPath, width: 64, height: 64,),
            SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
