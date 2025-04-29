// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/app_colors.dart';
import '../resources/app_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final TextStyle style;

  const CustomButton(
      {required this.text,
      required this.backgroundColor,
      this.onPressed,
      super.key,
      required this.style});

  // ignore: use_key_in_widget_constructors
  CustomButton.primary({required String text, VoidCallback? onPressed})
      : this(
            text: text,
            backgroundColor: AppColors.primaryColor,
            onPressed: onPressed,
            style: AppStyles.semiBold
                .copyWith(color: AppColors.myWhite, fontSize: 16));
  // ignore: use_key_in_widget_constructors
  CustomButton.secondary({required String text, VoidCallback? onPressed})
      : this(
            text: text,
            backgroundColor: AppColors.myWhite,
            onPressed: onPressed,
            style: AppStyles.semiBold
                .copyWith(color: AppColors.primaryColor, fontSize: 16));

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.infinity,
      height: 50.h,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: onPressed,
        child: Text(text, style: style),
      ),
    );
  }
}
