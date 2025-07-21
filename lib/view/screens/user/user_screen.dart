import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import 'package:time/view/utils/app_images/app_images.dart';

import '../../components/custom_nav_bar/navbar.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

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
            const Icon(Icons.notifications, color: Colors.red),
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
                    Get.toNamed(AppRoutes.projectDetailsScreen);
                  },
                  title: 'Today',
                  height: 40,
                  width: 120,
                  borderRadius: 30,
                  fillColor: AppColors.blue,
                ),
                SizedBox(width: 10,),
                CustomButton(
                  onTap: (){},
                  title: 'Report',
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
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: AppColors.grey_02,
                  shape: BoxShape.circle,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: '00:00:00',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            onTap: (){},
                            title: 'Start',
                            fontSize: 15,
                            height: 30,
                            width: 70,
                            borderRadius: 30,
                            fillColor: AppColors.blue,
                          ),
                          CustomButton(
                            onTap: (){},
                            title: 'Pause',
                            fontSize: 15,
                            height: 30,
                            width: 70,
                            borderRadius: 30,
                            fillColor: AppColors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            CustomText(
              text: 'My All Projects',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            SizedBox(height: 10,),
            Card(
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.green
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.home),
                          SizedBox(width: 10,),
                          Text('Phoenix Development'),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.home),
                          SizedBox(width: 10,),
                          Text('8 hours'),
                          Spacer(),
                          CustomText(text: 'Over Time 1 hour')
                          // CustomText(
                          //     text: '8 hours'
                          // ),
                          // CustomText(
                          //     text: 'Over Time 1 hour'
                          // )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
            SizedBox(height: 10,),
            Card(
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.home),
                          SizedBox(width: 10,),
                          Text('Phoenix Development'),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.home),
                          SizedBox(width: 10,),
                          Text('8 hours'),
                          Spacer(),
                          CustomText(text: 'Over Time 1 hour')
                          // CustomText(
                          //     text: '8 hours'
                          // ),
                          // CustomText(
                          //     text: 'Over Time 1 hour'
                          // )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
            SizedBox(height: 10,),
            Card(
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.home),
                          SizedBox(width: 10,),
                          Text('Phoenix Development'),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.home),
                          SizedBox(width: 10,),
                          Text('8 hours'),
                          Spacer(),
                          CustomText(text: 'Over Time 1 hour')
                          // CustomText(
                          //     text: '8 hours'
                          // ),
                          // CustomText(
                          //     text: 'Over Time 1 hour'
                          // )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
            SizedBox(height: 10,),

          ],
        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 0,),
    );
  }
}
