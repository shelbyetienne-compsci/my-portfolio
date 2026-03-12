import 'package:flutter/material.dart';
import 'package:my_portfolio/colors.dart';
import 'package:my_portfolio/ui/widgets/project_description_widget.dart';

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
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Padding(
      padding: const EdgeInsets.only(bottom: 64),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final itemWidth = constraints.maxWidth * 0.8;
          return Container(
            width: itemWidth,
            constraints: BoxConstraints(maxWidth: itemWidth, maxHeight: 444),
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.0),
                child: isMobile
                    ? Column(
                        children: [
                          Image.asset(
                            imagePath,
                            fit: BoxFit.fitWidth,
                            width: itemWidth,
                            height: 200,
                          ),
                          Container(
                            constraints: BoxConstraints(maxWidth: itemWidth, minHeight: 244),
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
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imagePath,
                            fit: BoxFit.fitWidth,
                            width: itemWidth / 2,
                          ),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: itemWidth / 2,
                            ),
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
