import 'package:flutter/material.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

class ClassNineScreen extends StatefulWidget {
  const ClassNineScreen({super.key});

  @override
  State<ClassNineScreen> createState() => _ClassNineScreenState();
}

class _ClassNineScreenState extends State<ClassNineScreen> {
  @override
  Widget build(BuildContext context) {

    List<String> city = ['Bangladesh','India','Pakistan','China','USA','Germany'];

    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Note',
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: city.length,
          itemBuilder: (context,index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(city[index]),
              ),
            );
          }
      ),
      bottomNavigationBar: NavBar(currentIndex: 1),
    );
  }
}
