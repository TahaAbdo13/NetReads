import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          CrossAxisAlignment.stretch, //خلي ال childern تاخد عرض ال =>colmun
      children: [
        SvgPicture.asset(
          AssetsData.logoPath,
          width: 70,
          height: 70,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
