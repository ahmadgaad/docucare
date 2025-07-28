import 'package:docdoc/core/configurations/themes/colors.dart';
import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/shared/utils/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, ${name![0].toUpperCase() + name!.substring(1)}!',
              style: TextStyles.font20DarkBlueBold,
            ),
            3.verticalSpace,
            Text('How are you today?', style: TextStyles.font14GreyRegular),
          ],
        ),
        Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: ColorUtils.lightGrey,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Stack(
              alignment: Alignment.topRight,
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(Svgs.notificationIcon, width: 28, height: 28),
                PositionedDirectional(
                  end: -1,
                  top: -3,
                  child: Container(
                    width: 12.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
