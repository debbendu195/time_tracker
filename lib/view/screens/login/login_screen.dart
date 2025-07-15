import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import 'package:time/view/utils/app_images/app_images.dart';

import '../../components/custom_royel_appbar/custom_royel_appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(titleName: "Login",),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            CustomText(
              top: 20,
              text: 'Log in to access your time tracking and project management dashboard.',
              maxLines: 2,
            ),
            CustomFormCard(title: "Email", controller: TextEditingController()),
            CustomFormCard(title: "Password", controller: TextEditingController()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    CustomText(text: 'Remember me'),
                  ],
                ),
                TextButton(
                    onPressed: (){},
                    child: Text('Forgot Password'),
                ),
              ],
            ),
            CustomButton(
              onTap: () {
                Get.toNamed(AppRoutes.forgatePassword);
              },
              title: 'Log in',
              fillColor: AppColors.blue,
              borderRadius: 30,
            )
          ],
        ),
      ),

    );  }
}
