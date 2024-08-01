import 'package:flutter/material.dart';

class TextSlidingAnimationBuilder extends StatelessWidget {
  const TextSlidingAnimationBuilder({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) => 
       SlideTransition(
        position: slidingAnimation,
        child: const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
