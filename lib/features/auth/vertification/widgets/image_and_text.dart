import 'package:flutter/material.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
              Image.asset(image),
              Text("Please enter the 4 digit code sent to: ",
                    style: AppStyles.regular
                        .copyWith(fontSize: 16, color: AppColors.myBlack),)

      ],
    );
  }
}