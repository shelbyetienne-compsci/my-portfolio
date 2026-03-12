import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DescriptionWidget extends ConsumerWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(32.0),
          child: Image.asset(
            'assets/images/IMG_1968.JPG',
            width: 280,
            height: 320,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 30),

        SizedBox(
          width: 400,
          child: const Text(
            "I’m a software engineer with experience building mobile and cross-platform applications using Flutter. I enjoy creating responsive, well-designed interfaces and developing software that balances performance, usability, and maintainability.",
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
            ),
          ),
        ),
      ],
    );
  }
}
