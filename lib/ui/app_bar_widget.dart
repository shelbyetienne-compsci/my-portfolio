import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/colors.dart';

class PortfolioAppBar extends ConsumerWidget
    implements PreferredSizeWidget {

  final VoidCallback onAbout;
  final VoidCallback onProjects;
  final VoidCallback onExperience;
  final VoidCallback onContact;

  const PortfolioAppBar({
    super.key,
    required this.onAbout,
    required this.onProjects,
    required this.onExperience,
    required this.onContact,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: AppColors.surface,
      surfaceTintColor: AppColors.background,
      foregroundColor: AppColors.textPrimary,
      title: const Text(
        "Shelby Etienne",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [

        TextButton(
          onPressed: onAbout,
          child: const Text("About"),
        ),

        TextButton(
          onPressed: onProjects,
          child: const Text("Projects"),
        ),

        TextButton(
          onPressed: onExperience,
          child: const Text("Experience"),
        ),

        TextButton(
          onPressed: onContact,
          child: const Text("Contact"),
        ),

        const SizedBox(width: 20)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}