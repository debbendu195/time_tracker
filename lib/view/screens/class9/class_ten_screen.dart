import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';

class ClassTenScreen extends StatelessWidget {
  const ClassTenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    _portraitMode(Size size){
      return Container(
        height: size.height,
        width: size.width,
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(),
            SizedBox(height: 20,),
            Text('This is portrait'),
            CustomButton(
              height: 80,
                width: 200,
                title: 'Next',
                onTap: (){
                  Get.toNamed(AppRoutes.layoutbuilder);
                }
            ),
          ],
        ),
      );
    }

    _landscapeMode(Size size){
      return Container(
        height: size.height,
        width: size.width,
        color: Colors.greenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(),
            SizedBox(height: 20,),
            Text('This is landscape')
          ],
        ),
      );
    }
    return Scaffold(
      body: OrientationBuilder(
          builder: (context,orientation){
            if(orientation==Orientation.portrait){
              return _portraitMode(size);
            }
            else{
              return _landscapeMode(size);
            }
          },
      ),
    );
  }
}
