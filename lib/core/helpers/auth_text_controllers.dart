import 'package:flutter/material.dart';

class AuthTextControllers {
  static final TextEditingController loginEmailController =
      TextEditingController();
  static final TextEditingController loginPasswordController =
      TextEditingController();
  static final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // Clear controllers when not needed
  static void disposeControllers() {
    loginEmailController.dispose();
    loginPasswordController.dispose();

  }
}
