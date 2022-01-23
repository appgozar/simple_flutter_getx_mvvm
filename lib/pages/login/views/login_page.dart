import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commons/size_constant.dart';
import '../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  static const routeName = '/';

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SizeConstant.largePadding,
              vertical: SizeConstant.mediumPadding,
            ),
            child: _body(),
          ),
        ),
      );

  Widget _body() => Form(
        key: controller.formKey,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  SizeConstant.extraLargeVerticalSpacer,
                  _username(),
                  SizeConstant.smallVerticalSpacer,
                  _password(),
                  const Expanded(child: SizedBox.shrink()),
                  _login(),
                ],
              ),
            )
          ],
        ),
      );

  Widget _username() => TextFormField(
        key: const ValueKey('username'),
        controller: controller.usernameController,
        decoration: const InputDecoration(labelText: 'Username'),
        validator: _emptyValidator('Username'),
        textInputAction: TextInputAction.next,
      );

  Widget _password() => Obx(
        () => TextFormField(
          key: const ValueKey('password'),
          controller: controller.passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: IconButton(
              icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  controller.showPassword.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                  key: ValueKey(controller.showPassword.value),
                ),
              ),
              onPressed: controller.togglePasswordVisibility,
            ),
          ),
          obscureText: !controller.showPassword.value,
          validator: _emptyValidator('Password'),
          textInputAction: TextInputAction.done,
        ),
      );

  Widget _login() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          key: const ValueKey('login'),
          onPressed: controller.onLogin,
          child: Obx(() => controller.isLoadingLogin.value
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 1,
                  ),
                )
              : const Text('Login')),
        ),
      );

  FormFieldValidator<String>? _emptyValidator(String field) =>
      (text) => text?.trim().isEmpty ?? true
          ? '$field is required'
          : (text!.length < 4 ? '$field is at least 4 character' : null);
}
