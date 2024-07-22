import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrcode/features/home/logic/cubit/get_books_cubit.dart';

import 'categories_section.dart';
import 'home_books_list_view.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  void initState() {
    context.read<GetBooksCubit>().getBooks(category: 'computer science');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          CategoriesSection(),
          HomeBooksListView(),
        ],
      ),
    );
    // return const CustomScrollView(
    //   slivers: [
    //     SliverToBoxAdapter(
    //       child: CategoriesSection(),
    //     ),
    //     SliverFillRemaining(
    //       child: HomeBooksListView(),
    //     )
    //   ],
    // );
  }
}
