import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/styles.dart';
import 'categories_list_view.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(15),
          Text(
            'Categories',
            style: AppStyles.font24Black700Weight,
          ),
          verticalSpace(10),
          const CategoriesListView(),
          verticalSpace(30),
          Text(
            'Computer Science',
            style: AppStyles.font24Black700Weight,
          ),
          verticalSpace(50),
        ],
      ),
    );
  }
}
