import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/home_latest_transaction_item.dart';
import 'package:bank_sha/ui/widgets/home_service_item.dart';
import 'package:bank_sha/ui/widgets/home_tips_item.dart';
import 'package:bank_sha/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildProfile() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'shaynahan',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/img_profile.png',
                    ),
                  ),
                ),
                child: Align(
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
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buildWalletCard() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.all(30),
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/img_bg_card.png',
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shayna Hanna',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              '**** **** **** 1280',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 18,
                letterSpacing: 6,
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Text(
              'Balance',
              style: whiteTextStyle,
            ),
            Text(
              'Rp 12.500',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      );
    }

    Widget buildLevel() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Level 1',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                Spacer(),
                Text(
                  '55% ',
                  style: greenTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'of Rp 20.000',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              minHeight: 5,
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
            )
          ],
        ),
      );
    }

    Widget buildServices() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do Something',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeServiceItem(
                  iconUrl: 'assets/ic_topup.png',
                  title: 'Top Up',
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_send.png',
                  title: 'Send',
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_withdraw.png',
                  title: 'Withdraw',
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_more.png',
                  title: 'More',
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget buildLatesTransactions() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Transactions',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 14,
              ),
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  HomeLatestServiceItem(
                    iconUrl: 'assets/ic_transaction_cat1.png',
                    title: 'Top Up',
                    time: 'Yesterday',
                    value: '+ 450.000',
                  ),
                  HomeLatestServiceItem(
                    iconUrl: 'assets/ic_transaction_cat2.png',
                    title: 'Cashback',
                    time: 'Sep 11',
                    value: '+ 22.000',
                  ),
                  HomeLatestServiceItem(
                    iconUrl: 'assets/ic_transaction_cat3.png',
                    title: 'Withdraw',
                    time: 'Sep 2',
                    value: '- 5.000',
                  ),
                  HomeLatestServiceItem(
                    iconUrl: 'assets/ic_transaction_cat4.png',
                    title: 'Transfer',
                    time: 'Aug 27',
                    value: '- 123.500',
                  ),
                  HomeLatestServiceItem(
                    iconUrl: 'assets/ic_transaction_cat5.png',
                    title: 'Electric',
                    time: 'Feb 18',
                    value: '- 12.300.000',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget buildSendAgain() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Transactions',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeUserItem(
                    imageUrl: 'assets/img_friend1.png',
                    username: 'yuanita',
                  ),
                  HomeUserItem(
                    imageUrl: 'assets/img_friend2.png',
                    username: 'jani',
                  ),
                  HomeUserItem(
                    imageUrl: 'assets/img_friend3.png',
                    username: 'urip',
                  ),
                  HomeUserItem(
                    imageUrl: 'assets/img_friend4.png',
                    username: 'jason',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget buildFriendlyTips() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Friendly Tips',
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
              runSpacing: 18,
              children: [
                HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'Best tips for using a credit card',
                  url: 'https://www.google.com/',
                ),
                HomeTipsItem(
                  imageUrl: 'assets/img_tips2.png',
                  title: 'Best tips for using a credit card',
                  url: 'https://pub.dev/packages/url_launcher/example',
                ),
                HomeTipsItem(
                  imageUrl: 'assets/img_tips3.png',
                  title: 'Best tips for using a credit card',
                  url: 'https://www.google.com/',
                ),
                HomeTipsItem(
                  imageUrl: 'assets/img_tips4.png',
                  title: 'Best tips for using a credit card',
                  url: 'https://www.google.com/',
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 10,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 10,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                width: 20,
                color: blueColor,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
              ),
              label: 'Reward',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            buildProfile(),
            buildWalletCard(),
            buildLevel(),
            buildServices(),
            buildLatesTransactions(),
            buildSendAgain(),
            buildFriendlyTips(),
          ],
        ),
      ),
    );
  }
}
