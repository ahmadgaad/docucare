import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:docdoc/features/home/presentation/components/doctors_vertical_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsVerticalListView extends StatelessWidget {
  final List<DoctorModel> doctors;
  const DoctorsVerticalListView({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return DoctorVerticalListViewItem(doctorModel: doctors[index]);
      },
      separatorBuilder: (context, index) => 10.verticalSpace,
      itemCount: doctors.length,
    );
  }
}
