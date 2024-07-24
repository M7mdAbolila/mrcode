import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "flutter",
      "dart",
      "react",
      "java",
      "c++",
      "c",
      "c#",
      "js",
      "angular",
      'my sql',
    ];

    
    return SizedBox(
      height: 105.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: titles.length,
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
                  child: Image.asset('assets/images/${titles[index]}_logo.png'),
                ),
                verticalSpace(7),
                Text(
                  titles[index].toUpperCase(),
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
