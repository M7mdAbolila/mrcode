
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textStyle,
    this.width,
    this.height,
    this.onPressed,
  });
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(backgroundColor ?? Colors.white),
      ),
      child: SizedBox(
        height: height ?? 50.h,
        width: width ?? 320.w,
        child: Center(
          child: Text(
            text,
            style: textStyle ?? AppStyles.font20PurpleBold,
          ),
        ),
      ),
    );
  }
}
