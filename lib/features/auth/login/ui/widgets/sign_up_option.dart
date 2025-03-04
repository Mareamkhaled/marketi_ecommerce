import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/core/helpers/get_font_size.dart';
import 'package:marketi_ecommerce/core/resources/app_style.dart';

import '../../../../../core/resources/app_colors.dart';

class SignUpOption extends StatelessWidget {
  const SignUpOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Are you new in Marketi",style: AppStyles.regular.copyWith(fontSize: getFontSize(context, 12))),
        TextButton(onPressed: () {}, child: Text("register?",style: AppStyles.regular.copyWith(color: AppColors.primaryColor,fontSize: getFontSize(context, 12)),))
      ],
    );
  }
}