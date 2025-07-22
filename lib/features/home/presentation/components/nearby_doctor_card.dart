import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/features/home/presentation/components/wide_45degree_slices_painter.dart';
import 'package:docdoc/shared/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbyDoctorCard extends StatelessWidget {
  const NearbyDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 167.h,
          decoration: BoxDecoration(
            color: const Color(0xFF4285F4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CustomPaint(
              size: Size(double.infinity, 167.h),
              painter: Wide45DegreeSlicesPainter(),
            ),
          ),
        ),
        PositionedDirectional(
          end: 18,
          bottom: 0,
          child: Image.asset(width: 155, height: 215, Images.nurse),
        ),
        PositionedDirectional(
          // width: 200.w,
          start: 18,
          top: 12,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book and\nschedule with\nnearest doctor',
                style: TextStyles.font20WhiteMedium,
              ),
              15.verticalSpace,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(48)),
                  ),
                  // fixedSize: Size(109, 38.h),
                  minimumSize: Size(109, 38),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text("Find Nearby", style: TextStyles.font12BlueRegular),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
