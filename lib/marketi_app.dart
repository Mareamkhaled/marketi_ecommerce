import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/Routing/routing.dart';

import 'core/Routing/routes.dart';
import 'core/resources/app_theme.dart';

class MarketiApp extends StatelessWidget {
  const MarketiApp({super.key, required this.routing});
  final Routing routing;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Set the design size here
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Marketi',
        onGenerateRoute: routing.onGenerateRoute,
        initialRoute: Routes.splash,
        theme: AppTheme.lightTheme,
      );
      },
    );
  }
}
