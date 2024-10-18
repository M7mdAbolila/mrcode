import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/core/helpers/lauch_url.dart';
import 'package:mrcode/core/helpers/spacing.dart';
import 'package:mrcode/core/theme/styles.dart';
import 'package:mrcode/core/widgets/custome_button.dart';
import 'package:mrcode/features/book_details/ui/widgets/book_info.dart';
import 'package:mrcode/features/book_details/ui/widgets/build_divider.dart';
import 'package:mrcode/features/home/data/models/get_books_response.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 600,
            pinned: true,
            stretch: true,
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                bookModel.volumeInfo!.title!,
                style: AppStyles.font20White700Weight,
              ),
              background: Container(
                padding: const EdgeInsets.all(65),
                color: Colors.grey[800],
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: CachedNetworkImage(
                    imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.fromLTRB(14.w, 14.h, 14.w, 0),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BookInfo(
                        title: 'Title : ',
                        value: bookModel.volumeInfo!.title!,
                      ),
                      const BuildDivider(endIndent: 290),
                      BookInfo(
                        title: 'Author : ',
                        value: bookModel.volumeInfo!.authors![0],
                      ),
                      const BuildDivider(endIndent: 275),
                      BookInfo(
                        title: 'Description : ',
                        value: bookModel.volumeInfo!.description!,
                      ),
                      const BuildDivider(endIndent: 245),
                      verticalSpace(70),
                      CustomButton(
                        text: 'Preview',
                        onPressed: () {
                          log(bookModel.volumeInfo!.previewLink!);
                          launchCustomUrl(
                              context, bookModel.volumeInfo!.previewLink!);
                        },
                      ),
                      verticalSpace(500),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
