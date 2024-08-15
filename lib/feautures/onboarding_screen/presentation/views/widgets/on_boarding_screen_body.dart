import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/feautures/onboarding_screen/presentation/views/widgets/custom_page_view_builderItem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_elvated_buttom.dart';
import 'custom_on_boarding_screen_list_view_builder.dart';
import 'custom_text_button.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  PageController pageController = PageController();
  int currentIndex = 0;
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: PageView.builder(
                onPageChanged: (value) {
                  currentIndex = value;
                  if (currentIndex == items.length - 1) {
                    setState(() {
                      isLastPage = true;
                    });
                  } else {
                    setState(() {
                      isLastPage = false;
                    });
                  }
                },
                controller: pageController,
                itemCount: items.length,
                itemBuilder: (context, i) {
                  return CustomPageViewBuilderItem(
                      onboarderingitemmodel: items[i]);
                })),
        SizedBox(
          height: 10,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .45,
              ),
              Expanded(
                  child: CustomOnBoardingScreenListViewBuilder(
                currentIndex: currentIndex,
              )),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomElvatedButtom(
          pageController: pageController,
          isLastPage: isLastPage,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextButton(
          isLastPage: !isLastPage,
          pageController: pageController,
          onPressed: () {
            if (isLastPage) {
              pageController.animateToPage(0,
                  duration: const Duration(seconds: 1), curve: Curves.linear);
            } else {
              GoRouter.of(context).pushReplacement(AppRouter.homeViewPath);
            }
          },
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
