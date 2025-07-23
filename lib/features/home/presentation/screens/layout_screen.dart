import 'dart:developer';

import 'package:docdoc/core/configurations/themes/colors.dart';
import 'package:docdoc/features/calendar/presentation/screens/calendar_screen.dart';
import 'package:docdoc/features/chat/presentation/screens/chat_screen.dart';
import 'package:docdoc/features/home/presentation/screens/home_screen.dart';
import 'package:docdoc/features/home/presentation/screens/profile_screen.dart';
import 'package:docdoc/features/home/presentation/screens/search_screen.dart';
import 'package:docdoc/shared/utils/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    ChatScreen(),
    SearchScreen(),
    CalendarScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    log(
      "********************** rebuiding layout screen **********************",
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                Svgs.homeIcon,
                colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? ColorUtils.primary : ColorUtils.darkBlue,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {
                if (_currentIndex != 0) {
                  setState(() {
                    _currentIndex = 0;
                  });
                }
              },
            ),

            IconButton(
              icon: SvgPicture.asset(
                Svgs.chatIcon,
                colorFilter: ColorFilter.mode(
                  _currentIndex == 1 ? ColorUtils.primary : ColorUtils.darkBlue,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {
                if (_currentIndex != 1) {
                  setState(() {
                    _currentIndex = 1;
                  });
                }
              },
            ),
            40.horizontalSpace,
            IconButton(
              icon: SvgPicture.asset(
                Svgs.calendarIcon,
                colorFilter: ColorFilter.mode(
                  _currentIndex == 3 ? ColorUtils.primary : ColorUtils.darkBlue,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {
                if (_currentIndex != 3) {
                  setState(() {
                    _currentIndex = 3;
                  });
                }
              },
            ),
            IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.person,
                  color: _currentIndex == 4
                      ? ColorUtils.primary
                      : ColorUtils.darkBlue,
                ),
              ),
              onPressed: () {
                if (_currentIndex != 4) {
                  setState(() {
                    _currentIndex = 4;
                  });
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 75,
        height: 75,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: RawMaterialButton(
          fillColor: ColorUtils.primary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
          onPressed: () {
            if (_currentIndex != 2) {
              setState(() {
                _currentIndex = 2;
              });
            }
          },
          child: SvgPicture.asset(
            Svgs.searchIcon,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}

class NavIcon extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;

  const NavIcon({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: icon, onPressed: onTap);
  }
}
