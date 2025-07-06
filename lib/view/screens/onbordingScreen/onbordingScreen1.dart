import 'package:flutter/material.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_images/app_images.dart';

import '../../utils/app_colors/app_colors.dart';

class OnbordingscreenOne extends StatelessWidget {
  const OnbordingscreenOne({super.key});

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
                imageSrc: AppImages.timer,
                width: 287,
                height: 257,
              ),
            ),
            CustomText(
              top: 20,
              text: 'Let’s Track Your First Task',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
              maxLines: 5,
              bottom: 20,
            ),
            CustomText(
              top: 20,
              text:
              "It’s time to try out your new time tracker! Just tap the button to start tracking your work hours, and stop it when you’re done. You’ll be up and running in no time",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
              maxLines: 5,
              bottom: 50
            ),
            Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  color: AppColors.blue,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 10,
                  width: 10,
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
                    borderWidth: 1,
                  ),
                ),
                SizedBox(width: 20,),
                Flexible(
                  child: CustomButton(onTap: (){},
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
