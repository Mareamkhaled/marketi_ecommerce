import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/app_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
          children: [
            Text(
              title,
              style: AppStyles.semiBold
                  .copyWith(fontSize: 15, color: AppColors.myGrey),
            ),
          ],
        ),
    );
  }
   @override
  Size get preferredSize => AppBar().preferredSize;
}