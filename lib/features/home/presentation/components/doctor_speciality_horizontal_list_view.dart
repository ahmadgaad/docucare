import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:docdoc/features/home/presentation/components/doctor_speciality_horizontal_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityHorizontalListView extends StatelessWidget {
  final List<SpecializationsData> specializationDataList;
  final int? selectedIndex;
  const DoctorSpecialityHorizontalListView({
    super.key,
    required this.specializationDataList,
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return DoctorSpecialityHorizontalListViewItem(
                specialization: specializationDataList[index],
                index: index,
                isSelected: selectedIndex == index,
              );
            },
            separatorBuilder: (context, index) {
              return 10.horizontalSpace;
            },
            itemCount: specializationDataList.length,
          ),
        ),
      ],
    );
  }
}
