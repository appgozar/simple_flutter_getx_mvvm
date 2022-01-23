import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:simple_flutter_mvvm/commons/style_data.dart';

import '../../../../commons/size_constant.dart';

class UserListItem extends StatelessWidget {
  static const _avatarSize = 64.0;

  final String? avatar;
  final String? name;
  final String? email;
  final String? address;
  final VoidCallback? onTap;
  final bool isSkeleton;

  const UserListItem({
    this.avatar,
    this.name,
    this.email,
    this.address,
    this.onTap,
    Key? key,
  })  : isSkeleton = false,
        super(key: key);

  const UserListItem.loading({
    Key? key,
  })  : isSkeleton = true,
        avatar = null,
        name = '',
        email = '',
        address = '',
        onTap = null,
        super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: SizeConstant.smallPadding,
          vertical: SizeConstant.tinyPadding,
        ),
        child: Card(
          elevation: 16,
          shadowColor: StyleData.shadowColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(SizeConstant.smallPadding),
            child: isSkeleton ? _shimmer() : _content(),
          ),
        ),
      );

  Widget _shimmer() => Shimmer.fromColors(
        baseColor: Colors.black38,
        highlightColor: Colors.black12,
        child: _content(),
      );

  Widget _content() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _avatar(),
              SizeConstant.mediumHorizontalSpacer,
              Expanded(child: _baseInfo()),
            ],
          ),
          SizeConstant.mediumVerticalSpacer,
          _addressWidget(),
        ],
      );

  Column _baseInfo() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _nameWidget(),
          SizeConstant.mediumVerticalSpacer,
          _emailWidget(),
        ],
      );

  Widget _avatar() => InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(_avatarSize / 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_avatarSize / 2),
          child: avatar == null
              ? Container(
                  width: _avatarSize,
                  height: _avatarSize,
                  color: Colors.grey.shade800,
                )
              : Image.network(
                  avatar!,
                  height: _avatarSize,
                  width: _avatarSize,
                  fit: BoxFit.cover,
                ),
        ),
      );

  Widget _addressWidget() => Text(
        address ?? '',
        overflow: TextOverflow.clip,
        maxLines: 1,
      );

  Widget _nameWidget() => Text(
        name ?? '',
        overflow: TextOverflow.clip,
        maxLines: 1,
        style: const TextStyle(fontWeight: FontWeight.bold),
      );

  Widget _emailWidget() => Text(
        email ?? '',
        overflow: TextOverflow.clip,
        maxLines: 1,
      );
}
