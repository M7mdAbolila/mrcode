import 'package:flutter/material.dart';
import 'package:mrcode/core/routing/app_router.dart';
import 'package:mrcode/mrcode_app.dart';

void main() {
  runApp(
    MrcodeApp(
      appRouter: AppRouter(),
    ),
  );
}
