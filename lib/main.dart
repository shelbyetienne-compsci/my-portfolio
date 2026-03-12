import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/colors.dart';
import 'package:my_portfolio/theme.dart';
import 'package:my_portfolio/ui/widgets/animated_background_widget.dart';
import 'package:my_portfolio/ui/pages/contact_page_widget.dart';
import 'package:my_portfolio/ui/app_bar_widget.dart';
import 'package:my_portfolio/ui/pages/about_page_widget.dart';
import 'package:my_portfolio/ui/pages/experience_page_widget.dart';
import 'package:my_portfolio/ui/footer_widget.dart';
import 'package:my_portfolio/ui/pages/project_page_widget.dart';

void main() {
  runApp(const ProviderScope(child: MainPage()));
}

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  final aboutKey = GlobalKey();
  final projectsKey = GlobalKey();
  final experienceKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: Scaffold(
        backgroundColor: AppColors.background,

        appBar: PortfolioAppBar(
          onAbout: () => scrollTo(aboutKey),
          onProjects: () => scrollTo(projectsKey),
          onExperience: () => scrollTo(experienceKey),
          onContact: () => scrollTo(contactKey),
        ),
        body: AnimatedBackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AboutPage(sectionKey: aboutKey),
                ProjectPageWidget(sectionKey: projectsKey),
                ExperiencePageWidget(sectionKey: experienceKey),
                ContactPageWidget(sectionKey: contactKey),
                FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
