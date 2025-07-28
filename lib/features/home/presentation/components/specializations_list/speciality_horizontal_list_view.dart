import 'package:docdoc/features/home/data/models/specializations_response.dart';
import 'package:docdoc/features/home/presentation/components/specializations_list/speciality_horizontal_list_view_item.dart';
import 'package:docdoc/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityHorizontalListView extends StatefulWidget {
  final List<SpecializationsData> specializationDataList;

  const SpecialityHorizontalListView({
    super.key,
    required this.specializationDataList,
  });

  @override
  State<SpecialityHorizontalListView> createState() =>
      _SpecialityHorizontalListViewState();
}

class _SpecialityHorizontalListViewState
    extends State<SpecialityHorizontalListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  context.read<HomeCubit>().getDoctorsList(
                    specializationId: widget.specializationDataList[index].id,
                  );
                },
                child: SpecialityHorizontalListViewItem(
                  specialization: widget.specializationDataList[index],
                  itemIndex: index,
                  selectedIndex: selectedIndex,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return 10.horizontalSpace;
            },
            itemCount: widget.specializationDataList.length,
          ),
        ),
      ],
    );
  }
}
