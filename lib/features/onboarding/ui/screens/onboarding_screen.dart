import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:marketi_ecommerce/features/onboarding/ui/widgets/pages_navigate.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../../test_screen.dart';

import '../widgets/my_smooth_indicator.dart';
import '../widgets/on_boarding_item.dart';

// ignore: must_be_immutable
class OnboardingScreen extends HookWidget {
  OnboardingScreen({super.key});
  bool? isVisibleOne;
  bool? isVisibleTwo;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                OnBoardingItem(
                  onPressedOne: () {},
                  onPressedTwo: () =>
                      PagesNavigate().navigateToNextPage(pageController),
                  isVisibleOne: false,
                  image: Assets.assetsImagesOnboardingOnePng,
                  title: AppStrings.onboardingOneTitle,
                  description: AppStrings.onboardingOneDesc,
                  isVisibleTwo: true,
                ),
                OnBoardingItem(
                  onPressedOne: () =>
                      PagesNavigate().navigateToPreviousPage(pageController),
                  onPressedTwo: () =>
                      PagesNavigate().navigateToNextPage(pageController),
                  image: Assets.assetsImagesOnboardingTwoPng,
                  isVisibleOne: true,
                  isVisibleTwo: true,
                  title: AppStrings.onboardingTwoTitle,
                  description: AppStrings.onboardingTwoDesc,
                ),
                OnBoardingItem(
                  onPressedOne: () =>
                      PagesNavigate().navigateToPreviousPage(pageController),
                  onPressedTwo: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TestScreen(),
                        ));
                  },
                  image: Assets.assetsImagesOnboardingThreePng,
                  title: AppStrings.onboardingThreeTitle,
                  description: AppStrings.onboardingThreeDesc,
                  isVisibleOne: true,
                  isVisibleTwo: true,
                ),
              ],
            ),
          ),
          mySmoothIndicator(pageController),
          Gap(30)
        ],
      ),
    );
  }
}
