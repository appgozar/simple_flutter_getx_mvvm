// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendModel _$FriendModelFromJson(Map<String, dynamic> json) {
  return Data.fromJson(json);
}

/// @nodoc
class _$FriendModelTearOff {
  const _$FriendModelTearOff();

  Data call({required int id, required String guid, required String name}) {
    return Data(
      id: id,
      guid: guid,
      name: name,
    );
  }

  FriendModel fromJson(Map<String, Object?> json) {
    return FriendModel.fromJson(json);
  }
}

/// @nodoc
const $FriendModel = _$FriendModelTearOff();

/// @nodoc
mixin _$FriendModel {
  int get id => throw _privateConstructorUsedError;
  String get guid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendModelCopyWith<FriendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendModelCopyWith<$Res> {
  factory $FriendModelCopyWith(
          FriendModel value, $Res Function(FriendModel) then) =
      _$FriendModelCopyWithImpl<$Res>;
  $Res call({int id, String guid, String name});
}

/// @nodoc
class _$FriendModelCopyWithImpl<$Res> implements $FriendModelCopyWith<$Res> {
  _$FriendModelCopyWithImpl(this._value, this._then);

  final FriendModel _value;
  // ignore: unused_field
  final $Res Function(FriendModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? guid = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $FriendModelCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String guid, String name});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$FriendModelCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? id = freezed,
    Object? guid = freezed,
    Object? name = freezed,
  }) {
    return _then(Data(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Data implements Data {
  const _$Data({required this.id, required this.guid, required this.name});

  factory _$Data.fromJson(Map<String, dynamic> json) => _$$DataFromJson(json);

  @override
  final int id;
  @override
  final String guid;
  @override
  final String name;

  @override
  String toString() {
    return 'FriendModel(id: $id, guid: $guid, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.guid, guid) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(guid),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataToJson(this);
  }
}

abstract class Data implements FriendModel {
  const factory Data(
      {required int id, required String guid, required String name}) = _$Data;

  factory Data.fromJson(Map<String, dynamic> json) = _$Data.fromJson;

  @override
  int get id;
  @override
  String get guid;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}
