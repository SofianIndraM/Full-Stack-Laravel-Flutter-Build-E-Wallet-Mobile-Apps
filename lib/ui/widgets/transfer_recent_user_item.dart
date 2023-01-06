import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecentUserItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final bool isVerified;
  const TransferRecentUserItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.username,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 14,
            ),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '@$username',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          ),
          Spacer(),
          if (isVerified)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 14,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Verified',
                  style: greenTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 11,
                  ),
                )
              ],
            )
        ],
      ),
    );
  }
}
