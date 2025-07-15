import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../components/custom_image/custom_image.dart';
import '../../components/custom_text/custom_text.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/app_images/app_images.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Setting',
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Get.toNamed(AppRoutes.changePassScreen);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey_02,
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.edit,imageColor: AppColors.blue,height: 24,width: 24,),
                          SizedBox(width: 20),
                          CustomText(
                            text: 'Change Password',
                            color: AppColors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: (){
              Get.toNamed(AppRoutes.galleryScreen);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey_02,
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.privacyScreen);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CustomImage(imageSrc: AppImages.internet,imageColor: AppColors.blue,height: 24,width: 24,),
                            SizedBox(width: 20),
                            CustomText(
                              text: 'Privacy Policy',
                              color: AppColors.blue,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: (){
              Get.toNamed(AppRoutes.userScreen);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey_02,
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.delete,imageColor: AppColors.red_02,height: 24,width: 24,),
                          SizedBox(width: 20),
                          CustomText(
                            text: 'Delete Account',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: AppColors.red_02,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
