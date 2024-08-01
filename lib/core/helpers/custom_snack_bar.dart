import 'package:flutter/material.dart';
import 'package:mrcode/core/theme/colors.dart';

void customSnackBar(context, String? text, {Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color ?? AppColors.blue,
      content: Text(text ?? ''),
    ),
  );
}
