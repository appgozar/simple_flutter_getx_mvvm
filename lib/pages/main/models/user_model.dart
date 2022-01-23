import 'package:freezed_annotation/freezed_annotation.dart';

import 'friend_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String guid,
    required bool isOwner,
    required String balance,
    required String picture,
    required int age,
    required String eyeColor,
    required String name,
    required String gender,
    required String company,
    required String email,
    required String phone,
    required String address,
    required String about,
    required String registered,
    required double latitude,
    required double longitude,
    required String greeting,
    required String favoriteFruit,
    required List<String> tags,
    required List<FriendModel> friends,
  }) = Data;

  factory UserModel.fromJson(final Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
