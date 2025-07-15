import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import 'package:time/view/utils/app_images/app_images.dart';

class ForgatePassword extends StatelessWidget {
  const ForgatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CustomImage(
              imageSrc: AppImages.forgot,
              height: 342,
              width: 342,
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 510,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black_02,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(2, 10)
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomText(
                    top: 30,
                      text: 'Forgot Your Password?',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: 'No worries enter your email address, and we’ll sent you a code reset your password ',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        maxLines: 3,
                        bottom: 20,
                        ),
                      CustomFormCard(title: 'Email', controller: TextEditingController()),
                      SizedBox(height: 70,),
                      CustomButton(
                        onTap: (){
                          Get.toNamed(AppRoutes.otpScreen);
                        },
                        title: 'Send OTP Code',
                        fillColor: AppColors.blue,
                        borderRadius: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // child:
            //   Text(
            //     'Forgot Your Password?'
            //   ),
          ),
        ],
      ),
    );
  }
}
