import 'package:get/get.dart';
import 'package:simple_flutter_mvvm/pages/main/repositories/base_main_repository.dart';

import '../../profile/views/profile_page.dart';
import '../../shared/models/api_response.dart';
import '../models/user_model.dart';

class MainController extends GetxController {
  late final BaseMainRepository _repository = Get.find<BaseMainRepository>();
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
    Get.toNamed('${ProfilePage.routeName}/${ownerUserModel.guid}',
        arguments: ownerUserModel);
  }

  void onUserTapped(UserModel userModel) {
    Get.toNamed('${ProfilePage.routeName}/${userModel.guid}',
        arguments: userModel);
  }

  UserModel get ownerUserModel => cachedUsers.firstWhere((e) => e.isOwner);
}
