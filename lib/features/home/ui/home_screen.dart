import 'package:flutter/material.dart';
import 'package:mrcode/core/theme/styles.dart';

import '../../../core/theme/colors.dart';
import 'widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.blue,
        title: Text(
          'MrCode',
          style: AppStyles.font20White700Weight,
        ),
        centerTitle: true,
      ),
      body: const HomeScreenBody(),
    );
  }
}
