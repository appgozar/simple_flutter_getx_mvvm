import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commons/size_constant.dart';
import '../../shared/models/request_status.dart';
import '../../shared/widgets/user_profile_app_bar_content.dart';
import '../controllers/main_controller.dart';
import '../models/user_model.dart';
import 'widgets/user_list_item.dart';

class MainPage extends GetView<MainController> {
  static const routeName = '/main';

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBat(),
        body: _body(),
      );

  AppBar _appBat() {
    final ownerUserModel = controller.ownerUserModel;
    return AppBar(
      title: UserProfileAppBarContent(
        onTap: controller.onAvatarTapped,
        name: ownerUserModel.name,
        avatar: ownerUserModel.picture,
      ),
    );
  }

  Widget _body() =>
      Obx(() => controller.usersResponse.value.status == RequestStatus.loading
          ? _loadingList()
          : _list(controller.usersResponse.value.data!));

  Widget _list(List<UserModel> users) => ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: SizeConstant.largePadding,
        ),
        itemCount: users.length,
        itemBuilder: (context, index) => UserListItem(
          avatar: users[index].picture,
          name: users[index].name,
          address: users[index].address,
          email: users[index].email,
          onTap: () => controller.onUserTapped(users[index]),
        ),
      );

  Widget _loadingList() => ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: SizeConstant.largePadding,
        ),
        itemCount: 3,
        itemBuilder: (context, index) => const UserListItem.loading(),
      );
}
