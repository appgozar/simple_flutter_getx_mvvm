import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commons/view_utils.dart';
import '../../main/views/main_page.dart';
import '../../shared/exceptions/server_exception.dart';
import '../repositories/login_repository.dart';

class LoginController extends GetxController {
  final _repository = LoginRepository();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final isLoadingLogin = false.obs;
  final showPassword = false.obs;

  void onLogin() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }
    isLoadingLogin.value = true;
    try {
      await _repository.login(
        username: usernameController.text,
        password: passwordController.text,
      );
      Get.offAndToNamed(MainPage.routeName);
    } on ServerException catch (e) {
      ViewUtils.showErrorToast(e.error);
    }
    isLoadingLogin.value = false;
  }

  void togglePasswordVisibility() => showPassword.value = !showPassword.value;
}
