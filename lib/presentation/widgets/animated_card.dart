import 'package:flutter/material.dart';

class AnimatedCard extends StatelessWidget {
  final Widget child;
  const AnimatedCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: Card(key: ValueKey(child.hashCode), child: child),
    );
  }
}
