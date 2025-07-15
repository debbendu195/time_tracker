import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../components/custom_text/custom_text.dart';
import '../../utils/app_colors/app_colors.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Notes',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text('My Projects'),
            SizedBox(height: 20,),
            Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phoenix Development'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '8 hours'
                            ),
                            CustomButton(onTap: (){},title: 'view',)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(height: 10,),
            Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: AppColors.grey_02,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phoenix Development'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '8 hours'
                            ),
                            CustomButton(onTap: (){},title: 'view',)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(height: 10,),
            Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: AppColors.grey_02,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phoenix Development'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '8 hours'
                            ),
                            CustomButton(onTap: (){},title: 'view',)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(height: 10,),
            Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: AppColors.grey_02,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phoenix Development'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '8 hours'
                            ),
                            CustomButton(onTap: (){},title: 'view',)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
          Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phoenix Development'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '8 hours'
                            ),
                            CustomButton(onTap: (){},title: 'view',)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(height: 10,),
            Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: AppColors.grey_02,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phoenix Development'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '8 hours'
                            ),
                            CustomButton(onTap: (){},title: 'view',)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(height: 10,),
            Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: AppColors.grey_02,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phoenix Development'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '8 hours'
                            ),
                            CustomButton(onTap: (){},title: 'view',)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(height: 10,),
            Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: AppColors.grey_02,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phoenix Development'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: '8 hours'
                            ),
                            CustomButton(onTap: (){},title: 'view',)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(height: 20,),
            CustomButton(
              onTap: (){
                Get.toNamed(AppRoutes.viewScreen);
              },
              title: 'Next',
            )
          ],
        ),
      ),
    );
  }
}
