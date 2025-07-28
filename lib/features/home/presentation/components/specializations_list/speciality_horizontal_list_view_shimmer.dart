import 'package:docdoc/features/home/presentation/components/speciality_see_all_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityListViewShimmer extends StatelessWidget {
  const SpecialityListViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpecialitySeeAll(title: 'Doctor Speciality'),
        16.verticalSpace,
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Shimmer(
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey.shade300,
                        Colors.grey.shade100,
                        Colors.grey.shade300,
                      ],
                    ),
                    child: Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 239, 239, 251),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  12.verticalSpace,
                  Shimmer(
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey.shade300,
                        Colors.grey.shade100,
                        Colors.grey.shade300,
                      ],
                    ),
                    child: Container(
                      width: 70.w,
                      height: 14.h,
                      color: Colors.white,
                    ),
                  ),
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
