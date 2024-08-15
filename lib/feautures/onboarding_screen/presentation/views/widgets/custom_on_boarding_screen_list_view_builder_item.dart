import 'package:flutter/material.dart';

class CustomOnBoardingScreenListViewBuilderItem extends StatelessWidget {
  final bool isActive;
  const CustomOnBoardingScreenListViewBuilderItem({
    super.key,
    required this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: isActive ? 25 : 10,
        decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
