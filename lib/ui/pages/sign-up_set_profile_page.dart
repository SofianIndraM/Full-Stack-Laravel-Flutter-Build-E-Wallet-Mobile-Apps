import 'package:bank_sha/models/sign_up_form_model.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/button.dart';
import '../widgets/forms.dart';

class SignUpSetProfilePage extends StatelessWidget {
  final SignUpFormModel data;
  const SignUpSetProfilePage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    print(data.toJson());
    return Scaffold(
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
              children: [
                // Container(
                //   height: 120,
                //   width: 120,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: lightBackgroundColor,
                //   ),
                //   child: Center(
                //     child: Image.asset(
                //       'assets/ic_upload.png',
                //       width: 32,
                //     ),
                //   ),
                // ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/img_profile.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFormFilled(
                  title: 'Set PIN (6 digit number)',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-set-ktp');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
