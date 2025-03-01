import 'package:flutter/material.dart';

class PagesNavigate {
  void navigateToNextPage(PageController controller) {
    controller.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void navigateToPreviousPage(PageController controller) {
    controller.previousPage(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
