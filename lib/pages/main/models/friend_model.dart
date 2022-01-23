import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_model.freezed.dart';
part 'friend_model.g.dart';

@freezed
class FriendModel with _$FriendModel {
  const factory FriendModel({
    required int id,
    required String guid,
    required String name,
  }) = Data;

  factory FriendModel.fromJson(final Map<String, dynamic> json) =>
      _$FriendModelFromJson(json);
}
