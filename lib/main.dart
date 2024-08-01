import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mrcode/core/routing/app_router.dart';
import 'package:mrcode/firebase_options.dart';
import 'package:mrcode/mrcode_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MrcodeApp(
      appRouter: AppRouter(),
    ),
  );
}
