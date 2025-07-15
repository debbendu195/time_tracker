import 'package:flutter/material.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_images/app_images.dart';
import 'package:get/get.dart';

import '../../utils/app_colors/app_colors.dart';

class OnbordingscreenTwo extends StatelessWidget {
  const OnbordingscreenTwo({super.key});

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
                imageSrc: AppImages.target,
                width: 287,
                height: 257,
              ),
            ),
            CustomText(
              top: 20,
              text: 'Track your time effortlessly',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
              maxLines: 5,
              bottom: 20,
            ),
            CustomText(
                top: 20,
                text:
                "Easily start and stop timers for your tasks with a single tap. No more manual entries or confusion—just track your time with precision",
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
                  color: AppColors.blue,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 10,
                  width: 20,
                  color: AppColors.blue,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 10,
                  width: 10,
                  color: AppColors.blue,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Flexible(
                  child: CustomButton(onTap: (){
                    Navigator.pop(context);
                  },
                    title: "Back",
                    borderRadius: 30,
                    fillColor: AppColors.white,
                    textColor: AppColors.blue,
                    isBorder: true,
                    borderWidth: 2,
                  ),
                ),
                SizedBox(width: 16,),
                Flexible(
                  child: CustomButton(onTap: (){
                    Get.toNamed(AppRoutes.onbordingscreenThree);
                  },
                    title: "Next",
                    borderRadius: 30,
                    fillColor: AppColors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
