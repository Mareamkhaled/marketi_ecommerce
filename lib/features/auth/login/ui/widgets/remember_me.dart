import 'package:flutter/material.dart';

import '../../../../../core/helpers/get_font_size.dart';
import '../../../../../core/resources/app_style.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});
  
  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Row(
      children: [
        Checkbox(
        value: value,
        onChanged: (value) {},
      ),
        Text("Remember me",style: AppStyles.regular.copyWith(fontSize: getFontSize(context, 12)),)
      ],
    );
  }
}