import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const CustomAppBarWidget(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
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
          )
        ],
      ),
    );
  }
}
