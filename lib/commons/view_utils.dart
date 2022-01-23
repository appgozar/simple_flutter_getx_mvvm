import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'style_data.dart';

class ViewUtils {
  ViewUtils._();

  static void showErrorToast(String message) {
    Get.showSnackbar(GetSnackBar(
      backgroundColor: StyleData.errorColor,
      messageText: Text(message, style: const TextStyle(color: Colors.white)),
      duration: const Duration(seconds: 2),
    ));
  }
}
