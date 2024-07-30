import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/features/home/logic/cubit/get_books_cubit.dart';
import 'package:mrcode/features/home/ui/widgets/books_list_view.dart';

import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key, required this.categoryTitle});
  final String categoryTitle;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetBooksCubit>().getBooks(category: widget.categoryTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        title: Text(
          widget.categoryTitle.toUpperCase(),
          style: AppStyles.font20White700Weight,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 70.h),
        child: const GetBooksListView(
          isScrollable: true,
        ),
      ),
    );
  }
}
