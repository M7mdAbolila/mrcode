import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/routing/app_router.dart';
import 'package:mrcode/firebase_options.dart';
import 'package:mrcode/mrcode_app.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupGetIt();
  await checkIfLoggedInUser();
  runApp(
    MrcodeApp(
      appRouter: AppRouter(),
    ),
  );
}

checkIfLoggedInUser() async {
  bool? isLoggedIn = await SharedPrefHelper.getBool(SharedPrefKeys.isLoggedIn);
  if (isLoggedIn.isNullOrFalse()) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}
