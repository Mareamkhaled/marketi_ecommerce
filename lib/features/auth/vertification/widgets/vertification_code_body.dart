import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';
import '../../../../core/widgets/custom_button.dart';

class VertificationCodeBody extends StatelessWidget {
  const VertificationCodeBody({super.key, required this.image, required this.text, required this.onPressed});
  final String image;
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: "Verification code"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              RichText(
                text: TextSpan(
                    text: "Please enter the 4 digit code sent to: ",
                    style: AppStyles.regular
                        .copyWith(fontSize: 16, color: AppColors.myBlack),
                    children: [
                      TextSpan(
                        text: text,
                        style: AppStyles.regular.copyWith(
                            fontSize: 16, color: AppColors.primaryColor),
                      )
                    ]),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: PinCodeTextField(
                  length: 4,
                  appContext: context,
                  // autoDismissKeyboard: false,
                  // enablePinAutofill: true,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    inactiveColor: AppColors.primaryColor,
                    fieldWidth: 50,
                  ),
                ),
              ),
              CustomButton.primary(text: "Verify code", onPressed: onPressed),
              Text("0:46",
                  style: AppStyles.semiBold
                      .copyWith(color: AppColors.myGrey, fontSize: 18)),
              Text(
                "Resend code",
                style: AppStyles.semiBold
                    .copyWith(color: AppColors.myGrey, fontSize: 18),
              ),
              // Gap(40.h)
              //  Text.rich(TextSpan(text: "Please enter the 4 digit codesent to: +20 1501142409 "),textAlign: TextAlign.center,style: AppStyles.regular.copyWith(fontSize: 16),)
            ],
          ),
        ),
      
      ),
    );
  }
}