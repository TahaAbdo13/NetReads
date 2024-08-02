import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *
          .25, //=> AspectRatio=> هترجعلك نسب العرض الى الطول على حسب هذه المساحة
      child: AspectRatio(
        aspectRatio: 2.6 /
            4, //بيظبطلك نسبة العرض الي الطول على حسب ال مساحة الموجود باخلها
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
