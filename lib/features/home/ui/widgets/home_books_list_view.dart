
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/features/home/logic/cubit/get_books_cubit.dart';
import 'package:mrcode/features/home/ui/widgets/home_book_item.dart';
import 'package:mrcode/features/home/ui/widgets/home_shimmer_loading.dart';

class HomeBooksListView extends StatelessWidget {
  const HomeBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: BlocBuilder<GetBooksCubit, GetBooksState>(
        builder: (context, state) {
          if (state is GetBooksSuccess) {
            return ListView.builder(
              clipBehavior: Clip.none,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.books!.length,
              itemBuilder: (context, index) {
                return HomeBookItem(
                  bookModel: state.books![index],
                );
              },
            );
          } else if (state is GetBooksFailure) {
            return Center(
              child: Text(state.errMessage ?? 'Error'),
            );
          } else {
            return const HomeShimmerLoading();
          }
        },
      ),
    );
  }
}
