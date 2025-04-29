
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'my_container.dart';
import '../../../../../core/helpers/get_font_size.dart';
import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/resources/app_images.dart';
import '../../../../../core/resources/app_style.dart';

class LogInOptions extends StatelessWidget {
  const LogInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Align(
                    alignment: Alignment.center,
                    child: Text(
                      "or continue with ",
                      style: AppStyles.semiBold
                          .copyWith(color: AppColors.myGrey, fontSize: getFontSize(context, 12)),
                    ),
                  ),
                  const Gap(15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyContainer(img: Assets.assetsGooglePng),
                      MyContainer(img: Assets.assetsApplePng),
                      MyContainer(img: Assets.assetsFacebookPng)
                    ],
                  ),
      ],
    );
  }
}