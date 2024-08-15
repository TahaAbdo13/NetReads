import 'package:bookly/core/constants.dart';
import 'package:bookly/feautures/onboarding_screen/presentation/views/widgets/custom_on_boarding_screen_list_view_builder_item.dart';
import 'package:flutter/material.dart';

class CustomOnBoardingScreenListViewBuilder extends StatelessWidget {
  final int currentIndex;

  const CustomOnBoardingScreenListViewBuilder({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, i) {
          return CustomOnBoardingScreenListViewBuilderItem(
              isActive: currentIndex == i ? true : false);
        });
  }
}
