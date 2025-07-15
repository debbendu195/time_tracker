import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../components/custom_nav_bar/navbar.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String results = '';
  int selected = 0;
  int score = 0;

  _randomNumberGenerator(){
    int randomNumber=Random().nextInt(3);

    setState(() {
      results = randomNumber.toString();
      if(selected.toString() == results){
        score++;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(score.toString()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(results, style: TextStyle(fontSize: 20)),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(onPressed: (){
                setState(() {
                  selected = 0;
                  _randomNumberGenerator();
                });
              },
                child: Text('0',),),
              FloatingActionButton(onPressed: (){
                setState(() {
                  selected = 1;
                  _randomNumberGenerator();
                });
              },
                child: Text('1'),),
              FloatingActionButton(onPressed: (){
                setState(() {
                  selected = 2;
                  _randomNumberGenerator();
                });
              },
                child: Text('2'),),
            ],
          ),
          SizedBox(height: 20,),
          CustomButton(
            title: 'Next',
            height: 80,
              width: 200,
              onTap: (){
                Get.toNamed(AppRoutes.classTenScreen);
              }
          ),
        ],
      ),
      bottomNavigationBar: NavBar(currentIndex: 0),
    );
  }
}
