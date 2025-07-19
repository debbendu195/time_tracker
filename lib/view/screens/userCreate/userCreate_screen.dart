import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import 'package:time/view/utils/app_images/app_images.dart';

class UserCreate extends StatelessWidget {
  const UserCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              imageSrc: AppImages.mainLogo,
            ),
            CustomText(
              top: 20,
              text: 'Alpha Track',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              maxLines: 5,
              color: AppColors.blue,
              bottom: 20,
            ),
            CustomText(
              text: 'Ready to Get Started?',
              fontWeight: FontWeight.w500,
              fontSize: 24,
              maxLines: 2,
            ),
            CustomText(
              text: 'To unlock all features and start tracking your time, please log in or sign up!',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              bottom: 20,
              maxLines: 2,
            ),
            SizedBox(height: 30,),
            CustomButton(
              onTap: (){
                Get.toNamed(AppRoutes.login);
              },
              title: 'Login',
              borderRadius: 30,
              fillColor: AppColors.blue,
            ),
            SizedBox(height: 20,),
            CustomButton(
              onTap: (){
                Get.toNamed(AppRoutes.signupScreen);
              },
              title: 'Sign Up',
              borderRadius: 30,
              fillColor: AppColors.white,
              textColor: AppColors.blue,
              isBorder: true,
              borderWidth: 2,
            ),
            SizedBox(height: 30,),
            CustomText(
              top: 20,
                text: 'Continue As a Guest',
            ),
          ],
        ),
      ),
    );
  }
}
