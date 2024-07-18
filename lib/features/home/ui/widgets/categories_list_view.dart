import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Column(
              children: [
                verticalSpace(3),
                Container(
                  width: 70.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blue.withOpacity(0.4),
                        blurRadius: 8.r,
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(15),
                  child: const FlutterLogo(),
                ),
                verticalSpace(7),
                Text(
                  'Flutter',
                  style: AppStyles.font16Black500Weight,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
