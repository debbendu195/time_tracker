import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Personal Information',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomFormCard(title: 'Name', controller: TextEditingController(),hintText: 'enter your name',),
            CustomFormCard(title: 'Email', controller: TextEditingController(),hintText: 'enter your email',),
            CustomFormCard(title: 'Contuct Number', controller: TextEditingController(),hintText: 'enter your contract number'),
            CustomButton(
              onTap: (){
                Get.toNamed(AppRoutes.personalUpdateScreen);
              },
              title: 'Edit',
              borderRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
