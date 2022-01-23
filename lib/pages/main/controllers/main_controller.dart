import 'package:get/get.dart';

import '../../profile/views/profile_page.dart';
import '../../shared/models/api_response.dart';
import '../models/user_model.dart';
import '../repositories/main_repository.dart';

class MainController extends GetxController {
  final _repository = MainRepository();
  late final List<UserModel> cachedUsers;

  final Rx<ApiResponse<List<UserModel>>> usersResponse =
      Rx(ApiResponse.loading());

  @override
  void onInit() {
    cachedUsers = _repository.getUsers();
    super.onInit();
    _loadData();
  }

  void _loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    usersResponse.value = ApiResponse.success(cachedUsers);
  }

  void onAvatarTapped() {
    Get.toNamed(ProfilePage.routeName, arguments: ownerUserModel);
  }

  void onUserTapped(UserModel userModel) {
    Get.toNamed(ProfilePage.routeName, arguments: userModel);
  }

  UserModel get ownerUserModel => cachedUsers.firstWhere((e) => e.isOwner);
}
