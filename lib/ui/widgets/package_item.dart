import 'package:bank_sha/shared/shared_methods.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class PackageItem extends StatelessWidget {
  final bool isSelected;
  final int amount;
  final int price;
  const PackageItem({
    super.key,
    this.isSelected = false,
    required this.amount,
    required this.price,
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
          Text(
            '${amount}GB',
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 32,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            formatCurrency(price),
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
