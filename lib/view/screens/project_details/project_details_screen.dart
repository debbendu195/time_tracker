import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_text/custom_text.dart';
import '../../utils/app_colors/app_colors.dart';

class ProjectDetailsScreen extends StatelessWidget {
  ProjectDetailsScreen({super.key});

  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/img.png'),
              radius: 20,
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText(
                  text: 'Hello,',
                  fontSize: 14,
                  color: Colors.black,
                ),
                CustomText(
                  text: 'Md Kamran Khan',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.notifications, color: Colors.black
            ),
          ],
        ),
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
                    Get.toNamed(AppRoutes.userScreen);
                  },
                  title: 'Today',
                  height: 40,
                  width: 120,
                  borderRadius: 30,
                  fillColor: AppColors.white,
                  textColor: AppColors.blue,
                  isBorder: true,
                  borderWidth: 2,
                  ),
                SizedBox(width: 10,),
                CustomButton(
                  onTap: (){
                    Get.toNamed(AppRoutes.projectDetailsScreen);
                  },
                  title: 'Report',
                  height: 40,
                  width: 120,
                  borderRadius: 30,
                  fillColor: AppColors.blue,
                ),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                TableCalendar(
                  locale: "en_US",
                    rowHeight: 43,
                    headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
                    focusedDay: today,
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 03, 14),
                ),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(
              top: 10,
              text: 'Total Hours',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                      color: AppColors.lightWhite,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    children: [
                      CustomText(
                        top: 10,
                        right: 100,
                        text: 'Today'
                      ),
                      CustomText(
                        top: 5,
                        right: 100,
                        text: '8h 30m',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                      color: AppColors.lightWhite,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    children: [
                      CustomText(
                          top: 10,
                          right: 100,
                          text: 'This Week'
                      ),
                      CustomText(
                        top: 5,
                        right: 100,
                        text: '15h 30m',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.lightWhite,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                children: [
                  CustomText(
                      top: 10,
                      right: 300,
                      text: 'This Week'
                  ),
                  CustomText(
                    top: 5,
                    right: 300,
                    text: '15h 30m',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            CustomButton(
                onTap: (){
                  Get.toNamed(AppRoutes.reportScreen);
                },
              title: 'OK',
            )
          ],
        ),
      ),
    );
  }
}
