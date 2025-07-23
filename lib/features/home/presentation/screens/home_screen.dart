import 'package:cached_network_image/cached_network_image.dart';
import 'package:docdoc/core/configurations/themes/styles.dart';
import 'package:docdoc/core/helpers/shared_pref.dart';
import 'package:docdoc/features/home/presentation/components/doctor_speciality_list_view.dart';
import 'package:docdoc/features/home/presentation/components/doctor_speciality_see_all_button.dart';
import 'package:docdoc/features/home/presentation/components/home_top_bar.dart';
import 'package:docdoc/features/home/presentation/components/nearby_doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SharedPrefService pref = SharedPrefService();

  String? get name {
    final user = pref.getString('name');
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              HomeTopBar(name: name),
              34.verticalSpace,
              NearbyDoctorCard(),
              24.verticalSpace,
              DoctorSpecialityListView(),
              DoctorSpecialitySeeAll(
                title: 'Recommendation Doctor',
                onPressed: () {},
              ),
              16.verticalSpace,
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: CachedNetworkImage(
                            width: 110.w,
                            height: 110,
                            fit: BoxFit.cover,
                            imageUrl:
                                'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          ),
                        ),
                        16.horizontalSpace,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. Randy Wigham",
                                style: TextStyles.font16DarkBlueBold,
                              ),
                              8.verticalSpace,
                              Text(
                                "General | RSUD Gatot Subroto",
                                style: TextStyles.font12GreyMedium,
                              ),
                              13.verticalSpace,
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amberAccent),
                                  4.horizontalSpace,
                                  Text("4.8 (4,279 reviews)"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return 10.verticalSpace;
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
