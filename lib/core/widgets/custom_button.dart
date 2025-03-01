// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/core/resources/app_colors.dart';

class CustomButton extends StatelessWidget{
  final String text;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  const CustomButton({
    required this.text,
    required this.backgroundColor,
    this.onPressed,
    super.key
  });
  
  // ignore: use_key_in_widget_constructors
  const CustomButton.primary({ 
    required String text,
    VoidCallback? onPressed
  }): this(text: text,backgroundColor: AppColors.primaryColor);
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
      onPressed: onPressed, child: Text(text),);
  }

  
}
