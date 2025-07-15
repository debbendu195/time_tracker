import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../components/custom_text/custom_text.dart';

class ClassOneScreen extends StatelessWidget {
  ClassOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'This is my first project',
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            Container(
                height: 150,
                width: 150,
                color: Colors.orange,
              ),
            Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Positioned(
                left: 20,
                  top: 20,
                  child: Container(
                    height: 50,
                    width: 50,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Positioned(
                left: 50,
                  top: 50,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                    clipBehavior: Clip.none,
                  ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Center(
            child: ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (_){
                        return AlertDialog(
                          content: Text('This is Debbendu'),
                        );
                      }
                  );
                },
                child: CustomText(
                  text: 'Open Box',
                ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: CustomButton(
              title: 'Next',
                height: 80,
                width: 200,
                onTap: (){
                  Get.toNamed(AppRoutes.classNineScreen);
                }
            ),
          )
        ],
      ),
    );
  }
}
