import 'package:get/get.dart';

import '../controllers/main_controller.dart';
import '../repositories/base_main_repository.dart';
import '../repositories/main_repository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseMainRepository>(MainRepository.new);
    Get.lazyPut(MainController.new);
  }
}
