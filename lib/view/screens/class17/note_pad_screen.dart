import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';
import 'package:time/view/utils/app_images/app_images.dart';

class NotePadScreen extends StatelessWidget {
  NotePadScreen({super.key});

  List<String> details = ['Kali paul','Ananta paul','Dabatosh paul','Debbendu paul'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Drafts',
      ),
      body: ListView.builder(
        itemCount: details.length,
        itemBuilder: (context,index){
          return ListTile(
            onTap: (){
              Get.toNamed(AppRoutes.noteDetailsScreen);
            },
            leading: CustomImage(imageSrc: AppImages.img),
            title: CustomText(text: 'text'),
            subtitle: CustomText(text: 'There are no options'),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.toNamed(AppRoutes.createScreen);
          },
          child: Icon(Icons.add),
      ),
      bottomNavigationBar: NavBar(currentIndex: 0),
    );
  }
}
