import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_style.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/image_and_text.dart';
import '../widgets/my_pin_code.dart';
import '../widgets/time_and_reset.dart';

class VertificationCodeWithPhone extends StatelessWidget {
  const VertificationCodeWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Verification code"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(spacing: 20, children: [
          const ImageAndText(image: Assets.assetsVertificationWithPhone),
          Text("01012345678",
              style: AppStyles.regular
                  .copyWith(fontSize: 16, color: AppColors.myGrey)),
          const MyPinCode(),
          CustomButton.primary(
            text: "Verify code",
            onPressed: () {},
          ),
          const TimeAndReset()
        ]),
      ),
    );
  }
}
