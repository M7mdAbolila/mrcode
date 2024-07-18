import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/styles.dart';
import 'categories_list_view.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: AppStyles.font24MainBlue500Weight,
        ),
        verticalSpace(10),
        const CategoriesListView(),
      ],
    );
  }
}
