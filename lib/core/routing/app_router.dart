import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrcode/core/di/dependency_injection.dart';
import 'package:mrcode/core/routing/routes.dart';
import 'package:mrcode/features/home/data/models/get_books_response.dart';
import 'package:mrcode/features/home/logic/cubit/get_books_cubit.dart';

import '../../features/book_details/ui/book_details_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';
import '../../features/signup/ui/signup_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => GetBooksCubit(getIt()),
            child: const HomeScreen(),
          ),
        );
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.bookDetailsScreen:
        final BookModel bookModel = settings.arguments as BookModel;
        return MaterialPageRoute(
          builder: (_) => BookDetailsScreen(
            bookModel: bookModel,
          ),
        );
      default:
        return null;
    }
  }
}
