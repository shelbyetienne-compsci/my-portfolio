import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

// MyAnimatedBackground class is stateful class.
class AnimatedBackgroundWidget extends StatefulWidget {
  final Widget child;

  const AnimatedBackgroundWidget({super.key, required this.child});

  @override
  State<AnimatedBackgroundWidget> createState() =>
      _AnimatedBackgroundWidgetState();
}

class _AnimatedBackgroundWidgetState extends State<AnimatedBackgroundWidget>
    with SingleTickerProviderStateMixin {
  // definition of ParticlesOptions.
  ParticleOptions particles = const ParticleOptions(
    baseColor: AppColors.accent,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    particleCount: 70,
    spawnMaxSpeed: 100.0,
    spawnMinSpeed: 30,
    spawnMaxRadius: 2.0,
    spawnMinRadius: 1.0,
  );

  @override
  Widget build(BuildContext context) {
    // return MaterialApp
    return AnimatedBackground(
      // vsync uses singleTicketProvider state mixin.
      vsync: this,
      behaviour: RandomParticleBehaviour(options: particles),
      child: widget.child,
    );
  }
}
