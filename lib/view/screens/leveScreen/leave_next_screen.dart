import 'package:flutter/material.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';

class LeaveNextScreen extends StatelessWidget {
  const LeaveNextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Leave',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(child: CustomFormCard(title: 'Leave Type' , controller: TextEditingController())),
                SizedBox(width: 10,),
                Flexible(child: CustomFormCard(title: 'Leave Consume', controller: TextEditingController())),
              ],
            ),
          Row(
              children: [
                Flexible(child: CustomFormCard(title: 'Leave Type' , controller: TextEditingController())),
                SizedBox(width: 10,),
                Flexible(child: CustomFormCard(title: 'Leave Consume', controller: TextEditingController())),
              ],
            ),
          Row(
              children: [
                Flexible(child: CustomFormCard(title: 'Leave Type' , controller: TextEditingController())),
              ],
            ),
            CustomButton(
              onTap: (){},
              title: 'Apply To 5 Day Leave',
              borderRadius: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 0,),
    );
  }
}
