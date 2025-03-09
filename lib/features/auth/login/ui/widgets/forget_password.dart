import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/features/auth/login/ui/widgets/remember_me.dart';

import '../../../../../core/Routing/routes.dart';
import '../../../../../core/helpers/get_font_size.dart';
import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/resources/app_style.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
      RememberMe(),
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.forgetWithPhone);
        },
        child: Text(
          "Forget Password?",
          style: AppStyles.regular.copyWith(
              color: AppColors.primaryColor, fontSize: getFontSize(context, 12)),
        ),
      ),
    ]);
  }
}
