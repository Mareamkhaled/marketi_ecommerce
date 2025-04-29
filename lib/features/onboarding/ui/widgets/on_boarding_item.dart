import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/helpers/get_font_size.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      this.isVisibleOne = false,
      this.isVisibleTwo = false,
      required this.onPressedOne,
      required this.onPressedTwo});
  final String image;
  final String title;
  final String description;
  final bool? isVisibleOne;
  final bool? isVisibleTwo;
  final void Function() onPressedOne;
  final void Function() onPressedTwo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(image)),
                  const Gap(20),
                  Text(
                    title,
                    style: AppStyles.bold.copyWith(
                        color: AppColors.myBlack,
                        fontSize: getFontSize(context, 20)),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(20),
                  Text(
                    description,
                    style: AppStyles.regular.copyWith(
                        color: AppColors.myBlack,
                        fontSize: getFontSize(context, 14)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const Gap(20),
            // CustomButton.primary(text: "Next", onPressed: onPressed)
            // Gap(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: isVisibleOne!,
                  child: TextButton(
                    onPressed: onPressedOne,
                    child: Text(
                      "Back",
                      style: AppStyles.semiBold.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: getFontSize(context, 16)),
                    ),
                  ),
                ),
                Visibility(
                  visible: isVisibleTwo!,
                  child: TextButton(
                    onPressed: onPressedTwo,
                    child: Text(
                      "Next",
                      style: AppStyles.semiBold.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: getFontSize(context, 16)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
