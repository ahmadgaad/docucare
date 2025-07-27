import 'package:cached_network_image/cached_network_image.dart';
import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorVerticalListViewItem extends StatelessWidget {
  const DoctorVerticalListViewItem({super.key, required this.doctorModel});

  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: CachedNetworkImage(
            width: 110.w,
            height: 110,
            fit: BoxFit.cover,
            imageUrl:
                "https://images.unsplash.com/photo-1582750433449-648ed127bb54?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          ),
        ),
        16.horizontalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(doctorModel.name, style: TextStyles.font16DarkBlueBold),
              8.verticalSpace,
              Text(
                "${doctorModel.degree} | ${doctorModel.phone}",
                style: TextStyles.font12GreyMedium,
              ),
              13.verticalSpace,
              Text(doctorModel.email, style: TextStyles.font12GreyMedium),
            ],
          ),
        ),
      ],
    );
  }
}
