import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_images/app_images.dart';

import '../../utils/app_colors/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(titleName: 'Profile'),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 110,
              width: 110,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/img.png'),
              ),
            ),
          ),
          SizedBox(height: 20),
          CustomText(
            text: 'Debbendu Paul Oni',
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: (){
              Get.toNamed(AppRoutes.personalInfoScreen);
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
                          CustomImage(imageSrc: AppImages.profile,imageColor: AppColors.blue,height: 24,width: 24,),
                          SizedBox(width: 20),
                          CustomText(
                            text: 'Personal Information',
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
              Get.toNamed(AppRoutes.settingsScreen);
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
                          CustomImage(imageSrc: AppImages.setting,imageColor: AppColors.blue,height: 24,width: 24,),
                          SizedBox(width: 20),
                          CustomText(
                            text: 'Setting',
                            color: AppColors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          // CustomButton(
                          //     onTap: (){
                          //       Get.toNamed(AppRoutes.personalInfoScreen);
                          //     }
                          // )
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
              Get.toNamed(AppRoutes.playRoleScreen);
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
                          CustomImage(imageSrc: AppImages.pay,imageColor: AppColors.blue,height: 24,width: 24,),
                          SizedBox(width: 20),
                          CustomText(
                            text: 'Play Role',
                            color: AppColors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          // CustomButton(
                          //     onTap: (){
                          //       Get.toNamed(AppRoutes.personalInfoScreen);
                          //     }
                          // )
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: AppImages.gallery,imageColor: AppColors.blue,height: 24,width: 24,),
                          SizedBox(width: 20),
                          CustomText(
                            text: 'Gallery',
                            color: AppColors.blue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          // CustomButton(
                          //     onTap: (){
                          //       Get.toNamed(AppRoutes.personalInfoScreen);
                          //     }
                          // )
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
                          CustomImage(imageSrc: AppImages.logout,imageColor: AppColors.red_02,height: 24,width: 24,),
                          SizedBox(width: 20),
                          CustomText(
                            text: 'Log Out',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: AppColors.red_02,
                          ),
                          // CustomButton(
                          //     onTap: (){
                          //       Get.toNamed(AppRoutes.personalInfoScreen);
                          //     }
                          // )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Card(
          //       color: AppColors.white,
          //       child: Padding(
          //         padding: const EdgeInsets.all(20.0),
          //         child: Column(
          //           children: [
          //             Row(
          //               children: [
          //                 Icon(Icons.settings),
          //                 SizedBox(width: 20,),
          //                 CustomText(text: 'Personal Information')
          //               ],
          //             ),
          //           ],
          //         ),
          //       )
          //     ),
          //   ),
          // Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Card(
          //       color: AppColors.white,
          //       child: Padding(
          //         padding: const EdgeInsets.all(20.0),
          //         child: Column(
          //           children: [
          //             Row(
          //               children: [
          //                 Icon(Icons.payment),
          //                 SizedBox(width: 20,),
          //                 CustomText(text: 'Personal Information')
          //               ],
          //             ),
          //           ],
          //         ),
          //       )
          //     ),
          //   ),
          // Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Card(
          //       child: Padding(
          //         padding: const EdgeInsets.all(20.0),
          //         child: Column(
          //           children: [
          //             Row(
          //               children: [
          //                 Icon(Icons.browse_gallery),
          //                 SizedBox(width: 20,),
          //                 CustomText(text: 'Personal Information')
          //               ],
          //             ),
          //           ],
          //         ),
          //       )
          //     ),
          //   ),
          // Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Card(
          //       color: AppColors.white,
          //       child: Padding(
          //         padding: const EdgeInsets.all(20.0),
          //         child: Column(
          //           children: [
          //             Row(
          //               children: [
          //                 Icon(Icons.logout,color: Colors.red,),
          //                 SizedBox(width: 20,),
          //                 CustomText(text: 'Personal Information', color: AppColors.red  ,)
          //               ],
          //             ),
          //           ],
          //         ),
          //       )
          //     ),
          //   ),
        ],
      ),
      bottomNavigationBar: NavBar(currentIndex: 4),
    );
  }
}
