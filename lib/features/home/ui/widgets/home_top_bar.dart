import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:templatemoh/core/theming/colors.dart';
import 'package:templatemoh/core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(' Hi, Omar!', style: TextStyles.font18DarkBlueBold),
            Text(
              ' How are you doing today',
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24.8,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset('assets/svgs/notifications.svg'),
        ),
      ],
    );
  }
}
