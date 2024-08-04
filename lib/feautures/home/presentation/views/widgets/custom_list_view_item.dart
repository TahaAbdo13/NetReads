import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsViewPath);
      },
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                    AssetsData.ImageBook1,
                  ),
                  fit: BoxFit.cover),
              color: Colors.red,
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
