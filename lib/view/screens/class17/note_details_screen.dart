import 'package:flutter/material.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_images/app_images.dart';

class NoteDetailsScreen extends StatelessWidget {
  const NoteDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Details',
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          CustomImage(imageSrc: AppImages.img,height: 400,width: 500,),
          CustomText(text: 'text'),
          CustomText(text: 'There are no options'),
        ],
      ),
    );
  }
}
