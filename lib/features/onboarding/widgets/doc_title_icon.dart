import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:templatemoh/core/theming/styles.dart';

class DocTitleIcon extends StatelessWidget {
  const DocTitleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/Group.svg'),
        SizedBox(width: 10.w),
        Text('Docdoc  ', style: TextStyles.font24BlackBold),
      ],
    );
  }
}
