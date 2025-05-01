import 'package:flutter/material.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';

class TimeAndReset extends StatelessWidget {
  const TimeAndReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
         Text("0:46",
                  style: AppStyles.semiBold
                      .copyWith(color: AppColors.myGrey, fontSize: 18)),
              Text(
                "Resend code",
                style: AppStyles.semiBold
                    .copyWith(color: AppColors.myGrey, fontSize: 18),
              ),
      ],
    );
  }
}