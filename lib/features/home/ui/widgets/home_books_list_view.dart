import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/features/home/ui/widgets/home_book_item.dart';

class HomeBooksListView extends StatelessWidget {
  const HomeBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        clipBehavior: Clip.none,
        itemCount: 8,
        itemBuilder: (context, index) {
          return const HomeBookItem();
        },
      ),
    );
  }
}
