import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/helpers/spacing.dart';
import 'package:mrcode/core/routing/routes.dart';
import 'package:mrcode/core/theme/styles.dart';

import '../../../core/widgets/custome_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              verticalSpace(50),
              SvgPicture.asset(
                'assets/svgs/onboarding.svg',
                height: 300.h,
              ),
              Text(
                'TechReads',
                style: AppStyles.font36Black700Weight,
              ),
              verticalSpace(15),
              Text(
                'Explore our tech book collection and take\n notes on the go.',
                style: AppStyles.font16Black500Weight,
                textAlign: TextAlign.center,
              ),
              verticalSpace(100),
              CustomButton(
                text: 'Discover',
                onPressed: () =>
                    context.pushReplacementNamed(Routes.loginScreen),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
