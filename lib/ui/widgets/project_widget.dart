import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/colors.dart';

import '../../theme.dart';

class ProjectWidget extends StatelessWidget {
  final String imagePath;
  final String projectName;
  final String projectYear;
  final String projectRole;
  final String projectDescription;
  final String projectLink;
  final List<String> languageList;

  const ProjectWidget({
    super.key,
    required this.imagePath,
    required this.projectName,
    required this.projectYear,
    required this.projectRole,
    required this.projectDescription,
    required this.projectLink,
    required this.languageList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 64),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final width = constraints.maxWidth * 0.8;
          return Container(
            width: width,
            constraints: BoxConstraints(maxWidth: width, maxHeight: 444),
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imagePath,
                      fit: BoxFit.fitWidth,
                      width: width / 2,
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: width / 2),
                      color: AppColors.surface,
                      child: ProjectDescriptionWidget(
                        projectName: projectName,
                        projectYear: projectYear,
                        projectRole: projectRole,
                        projectDescription: projectDescription,
                        projectLink: projectLink,
                        languageList: languageList,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProjectDescriptionWidget extends StatelessWidget {
  final String projectName;
  final String projectYear;
  final String projectRole;
  final String projectDescription;
  final String projectLink;
  final List<String> languageList;

  const ProjectDescriptionWidget({
    super.key,
    required this.projectName,
    required this.projectYear,
    required this.projectRole,
    required this.projectDescription,
    required this.projectLink,
    required this.languageList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Row(
            children: [
              Text(
                projectName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '●',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    height: 1.1,
                    color: AppColors.textSecondary.withValues(alpha: 0.55),
                  ),
                ),
              ),
              Text(
                projectYear,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          ProjectLanguagesWidget(languageList: languageList),
          Text(
            projectDescription,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          Text(
            projectRole,
            style: TextStyle(fontSize: 20, color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}

class ProjectLanguagesWidget extends StatelessWidget {
  final List<String> languageList;

  const ProjectLanguagesWidget({super.key, required this.languageList});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var language in languageList)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: LanguageItemWidget(language: language),
          ),
      ],
    );
  }
}

class LanguageItemWidget extends StatelessWidget {
  final String language;

  const LanguageItemWidget({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      child: Container(
        color: AppColors.textSecondary.withValues(alpha: 0.2),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          child: Text(
            language,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
