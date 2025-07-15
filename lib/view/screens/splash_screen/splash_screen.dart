import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/utils/app_images/app_images.dart';

import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), () => Get.toNamed(AppRoutes.homeScreen),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomImage(imageSrc: AppImages.logo)
          )
        ],
      ),
    );
  }
}
