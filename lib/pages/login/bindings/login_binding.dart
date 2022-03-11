import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../repositories/base_login_repository.dart';
import '../repositories/login_repository.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseLoginRepository>(LoginRepository.new);
    Get.lazyPut(LoginController.new);
  }
}
