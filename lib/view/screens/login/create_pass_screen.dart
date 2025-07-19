import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import 'package:time/view/utils/app_images/app_images.dart';
import '../../../core/app_routes/app_routes.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_text/custom_text.dart';

class CreatePassScreen extends StatelessWidget {
  const CreatePassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Create A New Password',
          color: AppColors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomImage(
              imageSrc: AppImages.security,
              width: 181,
              height: 181,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Expanded(
        child: Container(
          height: MediaQuery.sizeOf(context).height/2,
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
                SizedBox(height: 50,),
                Column(
                  children: [
                    CustomText(
                      text: 'We’ve sent a verification link to your email address. Please check your inbox and click on the link to confirm your account and get started with alpha track ',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      maxLines: 3,
                      bottom: 40,
                    ),
                    CustomFormCard(
                        title: 'New Password',
                        controller: TextEditingController()
                    ),
                    CustomFormCard(
                        title: 'Confirm New Password',
                        controller: TextEditingController()
                    ),
                    CustomButton(
                      onTap: (){
                        Get.toNamed(AppRoutes.signupScreen);
                      },
                      title: 'Confirm',
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
    );
  }
}
