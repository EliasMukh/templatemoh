import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templatemoh/core/theming/styles.dart';
import 'package:templatemoh/features/onboarding/widgets/doc_title_icon.dart';
import 'package:templatemoh/features/onboarding/widgets/doctor_image_and_title.dart';
import 'package:templatemoh/features/onboarding/widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 29.h, bottom: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DocTitleIcon(),
              SizedBox(height: 50.h),
              DoctorImageAndText(),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13GrayRegular,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  const GetStartedButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
