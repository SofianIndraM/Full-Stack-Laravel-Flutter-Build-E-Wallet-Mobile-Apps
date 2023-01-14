import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class TransferResultUserItem extends StatelessWidget {
  final UserModel user;
  final bool isSelected;
  const TransferResultUserItem({
    super.key,
    required this.user,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 13,
      ),
      height: 175,
      width: 155,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: user.profilePicture == null
                    ? AssetImage(
                        'assets/img_friend1.png',
                      )
                    : NetworkImage(user.profilePicture!) as ImageProvider,
              ),
            ),
            child: user.verified == 1
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Icon(
                        Icons.check_circle,
                        color: greenColor,
                        size: 14,
                      ),
                    ),
                  )
                : SizedBox(),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            user.name.toString(),
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            '@${user.username}',
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
