import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templatemoh/core/helpers/spacing.dart';
import 'package:templatemoh/core/theming/styles.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),

                  child: Image.asset(
                    width: 110.w,
                    height: 120.h,
                    'assets/images/omar.png',
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name', style: TextStyles.font18DarkBlueBold),
                      verticalSpace(5),
                      Text(
                        'Degree | 01111111111',
                        style: TextStyles.font12GrayRegular,
                      ),
                      verticalSpace(5),
                      Text(
                        'Degree | Email@email.com',
                        style: TextStyles.font12GrayRegular,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
