import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/features/home/presentation/components/title_with_see_all_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWithSeeAllButton(title: 'Doctor Speciality'),
        16.verticalSpace,
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 239, 239, 251),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.numbers),
                    ),
                  ),
                  12.verticalSpace,
                  Text('General', style: TextStyles.font14DarkBlueRegular),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return 10.horizontalSpace;
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
