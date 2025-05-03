// import 'package:device_preview/device_preview.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'core/Routing/routing.dart';
import 'core/helpers/service_locator.dart';
import 'marketi_app.dart';

void main() {
  setup();
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MarketiApp(
      routing: Routing(),
    ),
  ));
}
