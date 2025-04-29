import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/resources/app_colors.dart';

Widget mySmoothIndicator(PageController pageController) {
  return Container(
    alignment: const Alignment(0, 0.75),
    child: SmoothPageIndicator(
      controller: pageController,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: const WormEffect(
        spacing: 6,
        radius: 10.0,
        dotWidth: 15,
        dotHeight: 15,
        strokeWidth: 10,
        dotColor: AppColors.myGrey,
        activeDotColor: AppColors.primaryColor,
      ),
    ),
  );
}

// class MySmoothIndicator extends StatelessWidget {
//   MySmoothIndicator({super.key});
//   final PageController pageController = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//     alignment: const Alignment(0, 0.75),
//     child: SmoothPageIndicator(
//       controller: pageController,
//       count: 3,
//       axisDirection: Axis.horizontal,
//       effect: WormEffect(
//         spacing: 6,
//         radius: 10.0,
//         dotWidth: 20,
//         dotHeight: 20,
//         strokeWidth: 10,
//         dotColor: AppColors.myGrey,
//         activeDotColor: AppColors.primaryColor,
//       ),
//     ),
//   );
//   }
// }
