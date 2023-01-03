import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomFormFilled extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  const CustomFormFilled({
    super.key,
    required this.title,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
