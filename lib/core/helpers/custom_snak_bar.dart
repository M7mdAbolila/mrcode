import 'package:flutter/material.dart';
import 'package:mrcode/core/theme/colors.dart';

void customSnackBar(context, String text, {Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: color ?? AppColors.blue,
    ),
  );
}
