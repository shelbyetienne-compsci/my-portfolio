import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/ui/skills_widget.dart';
import 'package:my_portfolio/ui/widgets/page_widget.dart';

import '../description_widget.dart';

class AboutPage extends ConsumerWidget {
  final GlobalKey sectionKey;

  const AboutPage({super.key, required this.sectionKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return isMobile
        ? PageWidget(
            sectionKey: sectionKey,
            needsMaxConstraint: false,
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Column(
                spacing: 24,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DescriptionWidget(),
                  SkillsGrid(),
                ],
              ),
            ),
          )
        : PageWidget(
            sectionKey: sectionKey,
            needsMaxConstraint: true,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: DescriptionWidget()),
                Expanded(child: SkillsGrid()),
              ],
            ),
          );
  }
}
