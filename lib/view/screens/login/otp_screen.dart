import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_pin_code/custom_pin_code.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/utils/app_images/app_images.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_text/custom_text.dart';
import '../../utils/app_colors/app_colors.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              imageSrc: AppImages.otp,
              height: 350,
              width: 400,
            ),
          ),
          SizedBox(height: 100,),
          Expanded(
            child: Container(
              height: MediaQuery.sizeOf(context).height/2,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      top: 30,
                      text: 'Verify Your Account',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      bottom: 10,
                    ),
                    Column(
                      children: [
                        CustomText(
                          text: 'We’ve sent a verification link to your email address. Please check your inbox and click on the link to confirm your account and get started with alpha track ',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          maxLines: 3,
                          bottom: 20,
                        ),
                        CustomPinCode(controller: TextEditingController()),
                        CustomText(
                          text: 'Resent in 00:20',
                          fontSize: 13,
                        ),
                        SizedBox(height: 20,),
                        CustomButton(
                          onTap: (){
                            Get.toNamed(AppRoutes.createPassScreen);
                          },
                          title: 'Continue',
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
          ),
        ],
      )
    );
  }
}
