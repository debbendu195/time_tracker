import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';

class Layoutbuilder extends StatelessWidget {
  const Layoutbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
          builder: (context,constrains){
            print(constrains.maxWidth);
            if(constrains.maxWidth<700){
              return Container(
                width: size.width,
                height: size.height,
                color: Colors.orange,
                child:
                  // Text(
                  //     'This is my phone'
                  // ),
                CustomButton(
                  title: 'Next',
                    onTap: (){
                      Get.toNamed(AppRoutes.notePadScreen);
                    }
                ),
              );
            }
            else if(constrains.maxWidth<1000){
              return Container(
                width: size.width,
                height: size.height,
                color: Colors.greenAccent,
                child: Text('This tab view'),
              );
            }
            else{
              return Container(
                width: size.width,
                height: size.height,
                color: Colors.purple,
                child: Text('This is web view'),
              );
            }
          }
      ),
    );
  }
}
