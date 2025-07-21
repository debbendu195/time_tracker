import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(titleName: "Login",color: AppColors.blue,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            CustomText(
              top: 40,
              text: 'Log in to access your time tracking and project management dashboard.',
              maxLines: 2,
            ),
            SizedBox(height: 30,),
            CustomFormCard(title: "Email", controller: TextEditingController(), hintText: 'Enter your email',),
            CustomFormCard(title: "Password", controller: TextEditingController(), hintText: 'Enter your password',),
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
            SizedBox(height: 20,),
            CustomButton(
              onTap: () {
                Get.toNamed(AppRoutes.userScreen);
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
