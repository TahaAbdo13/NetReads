import 'package:bookly/feautures/onboarding_screen/data/models/onboardering_iem_model.dart';
import 'package:flutter/material.dart';

class CustomOnBoaderingScreenImage extends StatelessWidget {
  final Onboarderingitemmodel onboarderingitemmodel;
  const CustomOnBoaderingScreenImage({
    super.key,required this.onboarderingitemmodel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .5,
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                onboarderingitemmodel.imageUrl,
              ),
              fit: BoxFit.fill)),
    );
  }
}
