import 'package:flutter/material.dart';
import 'core/Routing/routing.dart';

import 'core/Routing/routes.dart';
import 'core/resources/app_theme.dart';

class MarketiApp extends StatelessWidget {
  const MarketiApp({super.key, required this.routing});
  final Routing routing;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marketi',
      onGenerateRoute: routing.onGenerateRoute,
      initialRoute: Routes.onboarding,
      theme: AppTheme.lightTheme,
    );
  }
}
