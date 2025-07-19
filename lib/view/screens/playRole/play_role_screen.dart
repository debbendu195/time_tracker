import 'package:flutter/material.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_colors/app_colors.dart';
import 'package:time/view/utils/app_images/app_images.dart';

class PlayRoleScreen extends StatelessWidget {
  const PlayRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(titleName: 'Payrole',),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // Container(
            //   height: 44,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: AppColors.grey_02
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       CustomImage(imageSrc: AppImages.pdf,height: 30,width: 30,),
            //       CustomText(text: 'PDF'),
            //       Row(
            //         children: [
            //           CustomImage(imageSrc: AppImages.download)
            //         ],
            //       )
            //     ],
            //   ),
            // ),
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.grey_02, // Light bluish background
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // PDF Icon
            Row(
              children: [
                CustomImage(imageSrc: AppImages.pdf),
                const SizedBox(width: 8),
                const Text(
                  'PDF',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.download),
              onPressed: () {

              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.grey_02, // Light bluish background
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Row(
              children: [
                CustomImage(imageSrc: AppImages.pdf),
                const SizedBox(width: 8),
                const Text(
                  'PDF',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.download),
              onPressed: () {

              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.grey_02, // Light bluish background
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // PDF Icon
            Row(
              children: [
                CustomImage(imageSrc: AppImages.pdf),
                const SizedBox(width: 8),
                const Text(
                  'PDF',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.download),
              onPressed: () {

              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.grey_02, // Light bluish background
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // PDF Icon
            Row(
              children: [
                CustomImage(imageSrc: AppImages.pdf),
                const SizedBox(width: 8),
                const Text(
                  'PDF',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.download),
              onPressed: () {

              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
    ],
        ),
      ),
    );
  }
}
