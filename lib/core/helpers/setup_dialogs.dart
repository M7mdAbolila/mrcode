import 'package:flutter/material.dart';
import 'package:mrcode/core/theme/colors.dart';

Future<dynamic> loadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => const Center(
      child: CircularProgressIndicator(
        color: AppColors.blue,
      ),
    ),
  );
}
