import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';

class ForgetBody extends StatelessWidget {
  const ForgetBody({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(50.h),
          Image.asset(image),
          Text(
            text,
            style: AppStyles.regular
                .copyWith(color: AppColors.myBlack, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
