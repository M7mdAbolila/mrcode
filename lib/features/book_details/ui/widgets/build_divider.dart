import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/core/theme/colors.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({super.key, required this.endIndent});
  final double endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 30.h,
      endIndent: endIndent.w,
      color: AppColors.blue,
      thickness: 2,
    );
  }
}
