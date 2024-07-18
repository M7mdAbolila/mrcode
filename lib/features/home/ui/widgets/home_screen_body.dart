import 'package:flutter/material.dart';

import 'categories_section.dart';
import 'home_books_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CategoriesSection(),
        ),
        SliverFillRemaining(
          child: HomeBooksListView(),
        )
      ],
    );
  }
}
