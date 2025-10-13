import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templatemoh/core/helpers/spacing.dart';
import 'package:templatemoh/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:templatemoh/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:templatemoh/features/home/ui/widgets/doctors_list_view.dart';
import 'package:templatemoh/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:templatemoh/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          //    color: Colors.amber,
          width: double.infinity,

          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),

              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),

              const DoctorsSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
