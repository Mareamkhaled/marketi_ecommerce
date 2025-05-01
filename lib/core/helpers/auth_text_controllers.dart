import 'package:flutter/material.dart';

class AuthTextControllers {
  static final TextEditingController loginEmailController =
      TextEditingController();
  static final TextEditingController loginPasswordController =
      TextEditingController();
  static final TextEditingController signUpEmailController =
      TextEditingController();
  static final TextEditingController signUpPasswordController =
      TextEditingController();
  static final TextEditingController signUpConfirmPasswordController =
      TextEditingController();
  static final TextEditingController signUpPhoneController =
      TextEditingController();
  static final TextEditingController signUpNameController =
      TextEditingController();
  static final TextEditingController forgetPasswordWithEmailController=
      TextEditingController();
  static final TextEditingController pinCodeController=
      TextEditingController();
  static final TextEditingController newPasswordController=
      TextEditingController();
  static final TextEditingController confirmNewPasswordController=
      TextEditingController();


  static final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  static final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  static final GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
  static final GlobalKey<FormState> createNewPasswordFormKey = GlobalKey<FormState>();

  // Clear controllers when not needed
  static void disposeControllers() {
    loginEmailController.dispose();
    loginPasswordController.dispose();
  }
}
