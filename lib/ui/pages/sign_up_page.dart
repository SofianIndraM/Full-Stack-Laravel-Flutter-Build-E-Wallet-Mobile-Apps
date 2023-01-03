import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/button.dart';
import '../widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            height: 50,
            width: 155,
            margin: EdgeInsets.only(
              top: 100,
              bottom: 50,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_logo_light.png',
                ),
              ),
            ),
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //NOTE: FULL NAME
                CustomFormFilled(
                  title: 'Full Name',
                ),
                SizedBox(
                  height: 16,
                ),
                //NOTE: EMAIL INPUT
                CustomFormFilled(
                  title: 'Email Address',
                ),
                SizedBox(
                  height: 16,
                ),
                //NOTE: PASSWORD INPUT
                CustomFormFilled(
                  title: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-set-profile');
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextButton(
            title: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
          ),
        ],
      ),
    );
  }
}
