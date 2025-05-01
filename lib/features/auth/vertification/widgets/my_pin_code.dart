import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../core/resources/app_colors.dart';

class MyPinCode extends StatelessWidget {
  const MyPinCode({super.key, this.controller});
 final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: PinCodeTextField(
                  controller: controller,
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
              );
  }
}