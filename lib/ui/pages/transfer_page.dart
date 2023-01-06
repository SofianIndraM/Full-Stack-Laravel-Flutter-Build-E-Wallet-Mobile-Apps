import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildRecentUsers() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Users',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            TransferRecentUserItem(
              imageUrl: 'assets/img_friend1.png',
              name: 'Yonna Jie',
              username: 'yoenna',
              isVerified: true,
            ),
            TransferRecentUserItem(
              imageUrl: 'assets/img_friend2.png',
              name: 'John Hi',
              username: 'jhi',
            ),
            TransferRecentUserItem(
              imageUrl: 'assets/img_friend2.png',
              name: 'John Hi',
              username: 'jhi',
            ),
          ],
        ),
      );
    }

    Widget buildResultUsers() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Result',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Wrap(
              spacing: 17,
              runSpacing: 17,
              children: [
                TransferResultUserItem(
                  name: 'Yonna Jie',
                  username: 'yoenna',
                  imageUrl: 'assets/img_friend1.png',
                  isVerified: true,
                ),
                TransferResultUserItem(
                  name: 'Sofian Indra',
                  username: 'opign101',
                  imageUrl: 'assets/img_friend2.png',
                  isSelected: true,
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          CustomFormFilled(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildResultUsers(),
          SizedBox(
            height: 220,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
