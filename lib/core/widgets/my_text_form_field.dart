import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:gap/gap.dart';

import '../helpers/get_font_size.dart';
import '../resources/app_colors.dart';
import '../resources/app_style.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
    
      {super.key,
      this.text,
      required this.hintText,
      this.controller,
      this.validator,
      this.onChanged,
      required this.prefixIcon,
      this.inputFormatters,
      this.isObscureText = false,this.suffixIcon, this.obscure, this.keyboardType});

  final String? text;
  final String hintText;
  // final Widget prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool isObscureText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text!,
            style: AppStyles.semiBold
                .copyWith(color: AppColors.myBlack, fontSize: getFontSize(context, 14))),
        Gap(15),
        TextFormField(
          keyboardType: keyboardType,
          obscureText: isObscureText,
          controller: controller,
          onChanged: onChanged,
          validator: validator,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            // focusColor: AppColors.myWhite,
            // hoverColor: AppColors.myGrey,
            // errorStyle: ,
            fillColor: AppColors.myWhite,
            filled: true,
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.myGrey),borderRadius: BorderRadius.circular(10)),
             prefixIcon: prefixIcon,
             suffixIcon: obscure == true ? null :  suffixIcon,
               
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: hintText,
            hintStyle: AppStyles.regular.copyWith(
                color: AppColors.myGrey, fontSize: getFontSize(context, 12) )
              // hintStyle: AppStyle.fontPoppinsRegular14Grey
              ),
        ),
      ],
    );
  }
}
