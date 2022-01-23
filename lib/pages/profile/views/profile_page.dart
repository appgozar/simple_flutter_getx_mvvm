import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../commons/size_constant.dart';
import '../../../commons/style_data.dart';
import '../../main/models/user_model.dart';
import '../../shared/widgets/user_profile_app_bar_content.dart';
import '../controllers/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  static const routeName = '/profile';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        body: _body(),
      );

  AppBar _appBar() => AppBar(
          title: UserProfileAppBarContent(
        avatar: controller.model.picture,
        name: controller.model.name,
      ));

  Widget _body() => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: SizeConstant.mediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizeConstant.mediumVerticalSpacer,
              _info(),
              SizeConstant.mediumVerticalSpacer,
              ..._friendSection(),
              _greetingTitle(),
              SizeConstant.smallVerticalSpacer,
              _greeting(),
              SizeConstant.smallVerticalSpacer,
            ],
          ),
        ),
      );

  Widget _info() => Card(
        shadowColor: StyleData.shadowColor,
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(SizeConstant.mediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _balance(),
              SizeConstant.mediumVerticalSpacer,
              _ageAndRegister(),
              SizeConstant.mediumVerticalSpacer,
              _aboutAndEdit(),
              SizeConstant.mediumVerticalSpacer,
            ],
          ),
        ),
      );

  Widget _balance() => Text(
        'Balance: ${controller.model.balance}',
      );

  Widget _ageAndRegister() => Row(
        children: [
          Expanded(child: Text('age:      ${controller.model.age}')),
          Expanded(
              child: Text(
            'registered: $_formattedRegisterDate',
            overflow: TextOverflow.clip,
          )),
        ],
      );

  Widget _aboutAndEdit() => Row(
        children: [
          Expanded(
              child: Text(
            'about : ${controller.model.about}',
          )),
          SizeConstant.mediumHorizontalSpacer,
          if (controller.model.isOwner)
            OutlinedButton(onPressed: () {}, child: const Text('Edit')),
        ],
      );

  List<Widget> _friendSection() => controller.model.friends.isEmpty
      ? []
      : [
          _friendTitle(),
          _friends(),
          SizeConstant.mediumVerticalSpacer,
        ];

  Widget _friendTitle() => const Text(
        'Friends:',
        style: StyleData.boldTextStyle,
      );

  Widget _friends() => SizedBox(
        height: 56,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => MaterialButton(
            onPressed: () {},
            child: ElevatedButton(
              child: Text(controller.model.friends[index].name),
              onPressed: () => controller
                  .onFriendTapped(controller.model.friends[index].guid),
            ),
          ),
          itemCount: controller.model.friends.length,
        ),
      );

  Widget _greetingTitle() => const Text(
        'greeting',
        style: StyleData.boldTextStyle,
      );

  Widget _greeting() => Card(
        shadowColor: StyleData.shadowColor,
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: StyleData.primaryColor.shade200,
        child: Container(
          width: double.infinity,
          alignment: Alignment.topCenter,
          margin:
              const EdgeInsets.symmetric(vertical: SizeConstant.mediumPadding),
          padding: const EdgeInsets.all(SizeConstant.mediumPadding),
          child: Text(
            controller.model.greeting,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );

  String get _formattedRegisterDate {
    final dateAndZone = controller.model.registered.split(' ');
    final String date = '${dateAndZone[0]}Z';
    final String? zone = dateAndZone.length == 2 ? dateAndZone[1] : null;
    final DateFormat formatter = DateFormat('hh:mm a');
    DateTime dateTime = DateTime.parse(date);
    if (zone != null) {
      final timeZone = zone.split(':');
      final timeZoneDiff = int.parse(timeZone[0]) * 60 + int.parse(timeZone[1]);
      dateTime = dateTime.add(Duration(minutes: timeZoneDiff));
    }
    return formatter.format(dateTime.toLocal());
  }

  @override
  String? get tag => (Get.arguments as UserModel).guid;
}
