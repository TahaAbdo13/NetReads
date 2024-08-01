import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  //ده هو اللي بيعمل refresh
// يعني مثلا لو الوقت 60 ثانيه هو مسؤول انكل ثانية هيعمل رفيريش هيغير القيم
  late AnimationController animationController; //Range 0 to 1
  //لو عايز Range اعلى من كدا =>
  //هتحط فوقيه اوبجيكت ياخد القيم منه ويرجعلك ال => Range you need
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(
        begin: const Offset(
          0,
          12,
        ),
        end:  Offset.zero).animate(animationController); //كدا انت حطيته فوق ال parent
    //offset ==> transation between x and y
    // Offset(dx, dy)
    //offset(0,0)==>نقطة الاصل
    animationController.forward();
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
    //تقدر تستغنى عن دي باستخدام 
    //AnimatedBuilder

    super.initState();
  }

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
        SlideTransition(
          position: slidingAnimation,
          child: const Text(
            "Read Free Books",
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
