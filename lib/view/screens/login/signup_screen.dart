import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Sign Up',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Center(
              child: CustomText(
                top: 20,
                text: 'Join alpha track Today!',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            CustomText(
              text: 'Create your account to access time tracking, project management tools, and more!',
              maxLines: 2,
            ),
            CustomFormCard(title: 'Name', controller: TextEditingController()),
            CustomFormCard(title: 'Email', controller: TextEditingController()),
            CustomFormCard(title: 'Contract Number', controller: TextEditingController()),
            CustomFormCard(title: 'Designation', controller: TextEditingController()),
            CustomFormCard(title: 'Password', controller: TextEditingController()),
            CustomFormCard(title: 'Confirm Password', controller: TextEditingController()),
            CustomButton(
              onTap: () {
                Get.toNamed(AppRoutes.userScreen);
              },
              title: 'Sign Up',
              fillColor: AppColors.blue,
              borderRadius: 30,
            ),
            CustomText(
              top: 10,
              text: 'Already Have An Account',

            ),
          ],
        ),
      ),
    );
  }
}
