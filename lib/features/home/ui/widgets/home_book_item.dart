import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/routing/routes.dart';
import 'package:mrcode/core/theme/colors.dart';
import 'package:mrcode/core/theme/styles.dart';

class HomeBookItem extends StatelessWidget {
  const HomeBookItem({
    super.key,
    required this.tag,
  });
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 55.h),
      child: GestureDetector(
        onTap: () =>
            context.pushNamed(Routes.bookDetailsScreen, arguments: tag),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 370.w,
              height: 130.h,
              decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            Positioned(
              top: -40.h,
              left: 20.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Hero(
                  tag: tag,
                  child: Image.asset(
                    'assets/images/test.jpg',
                    width: 100.w,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20.w,
              top: 8.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 190.w,
                    child: Text(
                      'Mohamed Abolila Harry Potter',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: AppStyles.font20White700Weight,
                    ),
                  ),
                  Text(
                    'Harry Potter ',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: AppStyles.font16Black500Weight,
                  ),
                  Text(
                    'Free',
                    style: AppStyles.font20White700Weight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
