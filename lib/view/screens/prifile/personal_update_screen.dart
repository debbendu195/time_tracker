import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../components/custom_button/custom_button.dart';
import '../../components/custom_from_card/custom_from_card.dart';

class PersonalUpdateScreen extends StatelessWidget {
  const PersonalUpdateScreen({super.key});

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
            Center(
              child: Container(
                height: 110,
                width: 110,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/img.png'),
                ),
              ),
            ),
            SizedBox(height: 20,),
            CustomFormCard(title: 'Name', controller: TextEditingController()),
            CustomFormCard(title: 'Email', controller: TextEditingController()),
            CustomFormCard(title: 'Contact Number', controller: TextEditingController()),
            CustomButton(
            onTap: (){
            Get.toNamed(AppRoutes.personalUpdateScreen);
            },
            title: 'Save & Changed',
            borderRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
