import 'package:docdoc/core/configurations/themes/colors.dart';
import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityHorizontalListViewItem extends StatelessWidget {
  const SpecialityHorizontalListViewItem({
    super.key,
    required this.specialization,
    required this.itemIndex,
    required this.selectedIndex,
  });

  final int itemIndex;
  final int selectedIndex;
  final SpecializationsData specialization;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70.w,
          height: 70.h,
          decoration: BoxDecoration(
            color: itemIndex == selectedIndex
                ? ColorUtils.primary.withValues(alpha: 0.2)
                : const Color.fromARGB(255, 239, 239, 251),
            shape: BoxShape.circle,
            border: itemIndex == selectedIndex
                ? Border.all(color: ColorUtils.primary, width: 2)
                : null,
          ),
          child: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.medical_services,
              color: itemIndex == selectedIndex
                  ? ColorUtils.primary
                  : ColorUtils.grey,
            ),
          ),
        ),
        12.verticalSpace,
        SizedBox(
          width: 70.w,
          child: Text(
            specialization.name,
            style: itemIndex == selectedIndex
                ? TextStyles.font14DarkBlueSemiBold
                : TextStyles.font14DarkBlueRegular,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
