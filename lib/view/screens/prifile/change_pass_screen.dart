import 'package:flutter/material.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

class ChangePassScreen extends StatelessWidget {
  const ChangePassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Change Password',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomFormCard(title: 'old pass', controller: TextEditingController()),
            CustomFormCard(title: 'new pass', controller: TextEditingController()),
            CustomFormCard(title: 'confirm pass', controller: TextEditingController()),
            CustomButton(
                onTap: (){

                },
              title: 'Confirm',
              borderRadius: 30,
            )
          ],
        ),
      ),
    );
  }
}
