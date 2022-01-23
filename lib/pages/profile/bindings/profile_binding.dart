import 'package:get/get.dart';

import '../../main/models/user_model.dart';
import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(ProfileController.new, tag: (Get.arguments as UserModel).guid);
  }
}
