import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import 'package:time/view/utils/app_images/app_images.dart';
import 'package:time/view/utils/app_images/app_images.dart';

class OnbordingscreenThree extends StatelessWidget {
  const OnbordingscreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CustomImage(
                imageSrc: AppImages.track,
                width: 282,
                height: 270,
              ),
            ),
            CustomText(
              top: 20,
              text: 'View Your Time in Detail',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
              maxLines: 5,
              bottom: 20,
            ),
            CustomText(
              text: 'Easily start and stop timers for your tasks with a single tap. No more manual entries or confusion—just track your time with precision',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
                maxLines: 5,
                bottom: 50
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.blue,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.blue,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 70),
        child: Row(
          children: [
            Flexible(
              child: CustomButton(
                onTap: (){
                  Navigator.pop(context);
                },
                title: 'Back',
                borderRadius: 30,
                textColor: AppColors.blue,
                fillColor: AppColors.white,
                isBorder: true,
                borderWidth: 2,
              ),
            ),
            SizedBox(width: 16,),
            Flexible(
              child: CustomButton(
                onTap: (){
                  Get.toNamed(AppRoutes.userCreate);
                },
                title: 'Next',
                borderRadius: 30,
                fillColor: AppColors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
