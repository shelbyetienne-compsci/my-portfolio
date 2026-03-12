import 'package:flutter/material.dart';

import '../../colors.dart';

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
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return isMobile
        ? Padding(
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
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '●',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          height: 1.1,
                          color: AppColors.textSecondary.withValues(
                            alpha: 0.55,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      projectYear,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                ProjectLanguagesWidget(languageList: languageList),
                Text(
                  projectDescription,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  projectRole,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          )
        : Padding(
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
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '●',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          height: 1.1,
                          color: AppColors.textSecondary.withValues(
                            alpha: 0.55,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      projectYear,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
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
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.textSecondary,
                  ),
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
