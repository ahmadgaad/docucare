import 'package:docdoc/core/configurations/themes/colors.dart';
import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:docdoc/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityHorizontalListViewItem extends StatelessWidget {
  const DoctorSpecialityHorizontalListViewItem({
    super.key,
    required this.specialization,
    required this.index,
    required this.isSelected,
  });

  final int index;
  final bool isSelected;
  final SpecializationsData specialization;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70.w,
          height: 70.h,
          decoration: BoxDecoration(
            color: isSelected
                ? ColorUtils.primary.withValues(alpha: 0.2)
                : const Color.fromARGB(255, 239, 239, 251),
            shape: BoxShape.circle,
            border: isSelected
                ? Border.all(color: ColorUtils.primary, width: 2)
                : null,
          ),
          child: IconButton(
            onPressed: () {
              context.read<HomeCubit>().selectSpecialization(index);
            },
            icon: Icon(
              Icons.medical_services,
              color: isSelected ? ColorUtils.primary : ColorUtils.grey,
            ),
          ),
        ),
        12.verticalSpace,
        SizedBox(
          width: 70.w,
          child: Text(
            specialization.name,
            style: TextStyles.font14DarkBlueRegular,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
