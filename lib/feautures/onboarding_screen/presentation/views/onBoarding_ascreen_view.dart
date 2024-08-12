import 'package:flutter/material.dart';

import 'widgets/on_boarding_screen_body.dart';

class OnboardingAscreenView extends StatelessWidget {
  const OnboardingAscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnBoardingScreenBody(),
      ),
    );
  }
}
