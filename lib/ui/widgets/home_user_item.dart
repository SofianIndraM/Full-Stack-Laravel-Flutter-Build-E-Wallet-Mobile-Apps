import 'package:bank_sha/models/user_model.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeUserItem extends StatelessWidget {
  final UserModel user;
  const HomeUserItem({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 17,
      ),
      height: 120,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: user.profilePicture == null
                    ? AssetImage(
                        'assets/img_bg_card.png',
                      )
                    : NetworkImage(user.profilePicture!) as ImageProvider,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            '@${user.username}',
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
