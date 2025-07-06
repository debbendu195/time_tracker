import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import 'package:time/view/utils/app_images/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: CustomImage(imageSrc: AppImages.mainLogo)),
            CustomText(
              top: 50,
              text: "welcome to alpha track ",
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
              bottom: 20,
            ),
            CustomText(
              text:
                  "Your all-in-one solution to track time, manage projects, and boost productivity. Let’s get started and make work easier for you ",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
              maxLines: 5,
              bottom: 20,
            ),
            CustomButton(
              onTap: () {
                Get.toNamed(AppRoutes.onbordingscreenOne);
              },
              title: "Get started",
              fillColor: AppColors.blue,
              borderRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
