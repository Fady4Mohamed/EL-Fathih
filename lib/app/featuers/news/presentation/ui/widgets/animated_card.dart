import 'package:flutter/material.dart';

class AnimatedCard extends StatelessWidget {
  const AnimatedCard({super.key, this.child, required this.delay});
final Widget? child;
final int delay ;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: delay),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, (1 - value) * 20),
          child: Opacity(
            opacity: value,
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}