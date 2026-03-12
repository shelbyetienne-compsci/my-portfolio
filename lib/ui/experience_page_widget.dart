import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/colors.dart';
import 'package:my_portfolio/ui/widgets/experience_widget.dart';
import 'package:my_portfolio/ui/widgets/page_widget.dart';

class ExperiencePageWidget extends StatelessWidget {
  final GlobalKey sectionKey;

  const ExperiencePageWidget({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return PageWidget(
      header: "Experience",
      sectionKey: sectionKey,
      needsMaxConstraint: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExperienceWidget(
            imagePath: "assets/images/youversion.png",
            company: "YouVersion",
            position: "Software Engineer",
            timeSpent: "2022-2024",
          ),
          Container(
            color: AppColors.border,
            child: SizedBox(width: screenWidth * 0.6, height: 1),
          ),
          ExperienceWidget(
            imagePath: "assets/images/masteryschools_logo.jpeg",
            company: "Mastery Schools",
            position: "Technology Teacher",
            timeSpent: "2025",
          ),
          Container(
            color: AppColors.border,
            child: SizedBox(width: screenWidth * 0.6, height: 1),
          ),
          ExperienceWidget(
            imagePath: "assets/icons/icons8-buildings-96.png",
            company: "Development Monitors",
            position: "Web Development Intern",
            timeSpent: "2021",
          ),
          Container(
            color: AppColors.border,
            child: SizedBox(width: screenWidth * 0.6, height: 1),
          ),
          ExperienceWidget(
            imagePath: "assets/images/blooms-logo.png",
            company: "Bloomsburg University",
            position: "Computer Science",
            timeSpent: "2018-2022",
          ),
        ],
      ),
    );
  }
}
