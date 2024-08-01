import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mrcode/core/routing/app_router.dart';
import 'package:mrcode/firebase_options.dart';
import 'package:mrcode/mrcode_app.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupGetIt();
  runApp(
    MrcodeApp(
      appRouter: AppRouter(),
    ),
  );
}
