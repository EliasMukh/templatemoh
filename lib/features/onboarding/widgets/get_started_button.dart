import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templatemoh/core/helpers/extension.dart';
import 'package:templatemoh/core/routing/routes.dart';
import 'package:templatemoh/core/theming/colors.dart';
import 'package:templatemoh/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 20.w),
      child: TextButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
        ),

        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        child: Text('Get Started', style: TextStyles.font16WhiteSemiBold),
      ),
    );
  }
}
