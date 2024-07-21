import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/core/helpers/spacing.dart';
import 'package:mrcode/core/theme/styles.dart';
import 'package:mrcode/features/book_details/ui/widgets/book_info.dart';
import 'package:mrcode/features/book_details/ui/widgets/build_divider.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({
    super.key,
    required this.tag,
  });
  final String? tag;
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
                'Harry Potter',
                style: AppStyles.font20White700Weight,
              ),
              background: Hero(
                tag: tag!,
                child: Container(
                  padding: const EdgeInsets.all(65),
                  color: Colors.grey[800],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.asset(
                      'assets/images/test.jpg',
                      fit: BoxFit.fill,
                    ),
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
                      const BookInfo(
                          title: 'Title : ', value: 'Programming in Go'),
                      const BuildDivider(endIndent: 290),
                      const BookInfo(
                          title: 'Author : ', value: 'Stephen G. Kochan'),
                      const BuildDivider(endIndent: 275),
                      const BookInfo(
                        title: 'Description : ',
                        value:
                            'Programming in C will teach you how to write programs in the C programming language. Whether you’re a novice or experienced programmer, this book will provide you with a clear understanding of this language, which is the foundation for many object-oriented programming languages such as C++, Objective-C, C#, and Java. This book teaches C by example, with complete C programs used to illustrate each new concept along the way. Stephen Kochan provides step-by-step explanations for all C functions. You will learn both the language fundamentals and good programming practices. Exercises at the end of each chapter make the book ideally suited for classroom use or for self-instruction. All the features of the C language are covered in this book, including the latest additions added with the C11 standard. Appendixes provide a detailed summary of the language and the standard C library, both organized for quick reference. “Absolutely the best book for anyone starting out programming in C. This is an excellent introductory text with frequent examples and good text....This is the book I used to learn C–it’s a great book.” –Vinit S. Carpenter, Learn C/C++ Today',
                      ),
                      const BuildDivider(endIndent: 245),
                      verticalSpace(400),
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
