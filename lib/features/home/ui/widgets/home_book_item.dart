import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/routing/routes.dart';
import 'package:mrcode/core/theme/colors.dart';
import 'package:mrcode/core/theme/styles.dart';

import '../../data/models/get_books_response.dart';

class HomeBookItem extends StatelessWidget {
  const HomeBookItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 55.h),
      child: GestureDetector(
        onTap: () => context.pushNamed(Routes.bookDetailsScreen),
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
                  tag: bookModel.id!,
                  child: CachedNetworkImage(
                    imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
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
                      bookModel.volumeInfo!.title!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: AppStyles.font20White700Weight,
                    ),
                  ),
                  Text(
                    bookModel.volumeInfo!.authors![0],
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
