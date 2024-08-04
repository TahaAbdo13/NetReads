import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feautures/home/presentation/views/books_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(BooksDetailsView(),
            transition: Transition.fadeIn, duration: kNavigateDurayion);
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
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
