import 'package:flutter/material.dart';

import '../../../commons/size_constant.dart';

class UserProfileAppBarContent extends StatelessWidget {
  static const _avatarSize = 32.0;

  final String name;
  final String? avatar;
  final VoidCallback? onTap;

  const UserProfileAppBarContent({
    required this.name,
    required this.avatar,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          _avatar(),
          SizeConstant.mediumHorizontalSpacer,
          Expanded(
            child: Text(name, maxLines: 1, overflow: TextOverflow.clip),
          ),
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
}
