import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final VoidCallback? onPressed;
  const CustomFilledButton({
    super.key,
    required this.title,
    this.height = 50,
    this.width = double.infinity,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final VoidCallback? onPressed;
  const CustomTextButton({
    super.key,
    required this.title,
    this.height = 24,
    this.width = double.infinity,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            color: Color(0xff696B76),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
