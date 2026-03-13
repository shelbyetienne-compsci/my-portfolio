import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/page_widget.dart';
import 'package:my_portfolio/ui/widgets/project_widget.dart';

class ProjectPageWidget extends StatelessWidget {
  final GlobalKey sectionKey;

  const ProjectPageWidget({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      needsMaxConstraint: false,
      sectionKey: sectionKey,
      header: "Projects",
      child: Column(
        children: [
          ProjectWidget(
            imagePath: "assets/images/bible-app.png",
            projectName: "Bible App",
            projectYear: "2022-24",
            projectRole: "Helped transition Bible App from Kotlin to Flutter.",
            projectDescription: "Built to help people create daily spiritual rhythms, the Bible App brings Scripture to life on any device, in thousands of languages.",
            projectLink: "https://www.youversion.com/bible-app",
            languageList: ["Flutter", "Dart", "Kotlin", "Android", "Python"],
          ),
          ProjectWidget(
            imagePath: "assets/images/bible-lite.png",
            projectName: "Bible Lite",
            projectYear: "2023-2024",
            projectRole: "Built and improved mobile features for the Bible Lite App.",
            projectDescription: "Bible App Lite is built for people who have limited connectivity or devices with limited memory and storage.",
            projectLink: "https://www.youversion.com/bible-app-lite",
            languageList: ["Flutter", "Dart", "Firebase"],
          ),
          ProjectWidget(
            imagePath: "assets/images/shelby-bible-app.png",
            projectName: "Personal Bible App",
            projectYear: "2025",
            projectRole: "Built simply to read the word and take notes.",
            projectDescription: "Bible reader application with offline support to deliver a smooth reading and study experience across mobile and web platforms.",
            projectLink: "https://github.com/shelbyetienne-compsci/Shelby-Bible-App",
            languageList: ["Flutter", "Dart", "Firebase", "API", "SQL", "Riverpod"],
          )
        ],
      ),
    );
  }
}
