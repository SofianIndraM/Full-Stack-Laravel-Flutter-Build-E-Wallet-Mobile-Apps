import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:bank_sha/models/sign_up_form_model.dart';
import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/ui/pages/sign_up_set_ktp_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../shared/theme.dart';
import '../widgets/button.dart';
import '../widgets/forms.dart';

class SignUpSetProfilePage extends StatefulWidget {
  final SignUpFormModel data;
  const SignUpSetProfilePage({
    super.key,
    required this.data,
  });

  @override
  State<SignUpSetProfilePage> createState() => _SignUpSetProfilePageState();
}

class _SignUpSetProfilePageState extends State<SignUpSetProfilePage> {
  final pinController = TextEditingController(text: '');
  XFile? selectedImage;

  bool validate() {
    if (pinController.text.length != 6) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    print(widget.data.toJson());
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
                GestureDetector(
                  onTap: () async {
                    final image = await selectImage();
                    setState(() {
                      selectedImage = image;
                    });
                  },
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightBackgroundColor,
                      image: selectedImage == null
                          ? null
                          : DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(File(selectedImage!.path)),
                            ),
                    ),
                    child: selectedImage != null
                        ? null
                        : Center(
                            child: Image.asset(
                              'assets/ic_upload.png',
                              width: 32,
                            ),
                          ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  widget.data.name!,
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
                  controller: pinController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    if (validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpSetKtpPage(
                            data: widget.data.copyWith(
                              pin: pinController.text,
                              profilePicture: selectedImage == null
                                  ? null
                                  : 'data:image/png;base64,' +
                                      base64Encode(
                                        File(selectedImage!.path)
                                            .readAsBytesSync(),
                                      ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      showCustomSnackbar(context, 'Pin Harus 6 Digit');
                    }
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
