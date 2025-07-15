import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_nav_bar/navbar.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Break',
        color: AppColors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  onTap: (){
                    Get.toNamed(AppRoutes.reportScreen);
                  },
                  title: 'Break',
                  height: 40,
                  width: 120,
                  borderRadius: 30,
                  fillColor: AppColors.blue,
                ),
                SizedBox(width: 10,),
                CustomButton(
                  onTap: (){
                    Get.toNamed(AppRoutes.leaveScreen);
                  },
                  title: 'Leave',
                  height: 40,
                  width: 120,
                  borderRadius: 30,
                  fillColor: AppColors.white,
                  textColor: AppColors.blue,
                  isBorder: true,
                  borderWidth: 2,
                ),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(
              text: 'Break Setting',
              fontWeight: FontWeight.w500,
               fontSize: 16,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Automatic Break',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                Text('Icon'),
              ],
            ),
            CustomText(
                text: 'Receive notifications when it time to take a break, ensuring you never miss a rest period.',
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Automatic Break',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                Text('Icon'),
              ],
            ),
            CustomText(
                text: 'Receive notifications when it time to take a break, ensuring you never miss a rest period.',
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Break History',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                SizedBox(height: 20,),
                CustomText(
                    text: 'Morning Break'
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: '10:30 Am - 10:15 Am'
                    ),
                    CustomText(
                        text: '15 Min'
                    ),
                  ],
                ),
              SizedBox(height: 20,),
                CustomText(
                    text: 'Morning Break'
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: '10:30 Am - 10:15 Am'
                    ),
                    CustomText(
                        text: '15 Min'
                    ),
                  ],
                ),
              SizedBox(height: 20,),
                CustomText(
                    text: 'Morning Break'
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: '10:30 Am - 10:15 Am'
                    ),
                    CustomText(
                        text: '15 Min'
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 0,),
    );
  }
}
