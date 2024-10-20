import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/core/helpers/constants.dart';
import 'package:mrcode/core/routing/routes.dart';

import 'core/routing/app_router.dart';

class MrcodeApp extends StatelessWidget {
  final AppRouter appRouter;
  const MrcodeApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MrCode',
        theme: ThemeData(
          fontFamily: 'Quicksand',
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute:
            isLoggedInUser ? Routes.homeScreen : Routes.onboardingScreen,
      ),
    );
  }
}
