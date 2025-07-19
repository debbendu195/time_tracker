import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:time/view/utils/app_images/app_images.dart';

import '../../screens/class9/class_nine_screen.dart';
import '../../screens/class9/game_screen.dart';
import '../../screens/home_screen/home_screen.dart';
import '../../screens/note/note_screen.dart';
import '../../screens/prifile/profile_screen.dart';
import '../../screens/user/user_screen.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/app_icons/app_icons.dart';
import '../custom_text/custom_text.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;

  const NavBar({required this.currentIndex, super.key});

  @override
  State<NavBar> createState() => _UserNavBarState();
}

class _UserNavBarState extends State<NavBar> {
  late int bottomNavIndex;
  final List<String> navbarNameList = [
    "home",
    "message",
    "break",
    "notes",
    "profile",
  ];
  final List<String> selectedIcon = [
    AppImages.home,
    AppImages.home,
    AppImages.bin,
    AppImages.notes,
    AppImages.profile2,
  ];
  final List<String> unselectedIcon = [
    AppImages.home,
    AppImages.home,
    AppImages.bin,
    AppImages.notes,
    AppImages.profile2,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          color: Color(0xff3F80AE),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        border: Border.all(color: AppColors.grey_03,width: .2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 0,
            offset: const Offset(3, 0),
          ),
        ]
      ),
      height: 85.h,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          selectedIcon.length,
              (index) => InkWell(
            onTap: () => onTap(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 6.h,),
                Container(
                  height: 40.h,
                  width: 40.w,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    index == bottomNavIndex ? selectedIcon[index] : unselectedIcon[index],
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                CustomText(
                  text: navbarNameList[index],
                  color: index == bottomNavIndex ? AppColors.white : AppColors.white_50,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {
    if (index != bottomNavIndex) {
      setState(() {
        bottomNavIndex = index;
      });

      switch (index) {
        case 0:
          Get.offAll(() => UserScreen());
          break;
        case 1:
         Get.to(() => ClassNineScreen());
          break;
        case 2:
         Get.to(() => GameScreen());
          break;
        case 3:
         Get.to(() => NoteScreen());
          break;
        case 4:
         Get.to(() => ProfileScreen());
          break;
      }
    }
  }
}
