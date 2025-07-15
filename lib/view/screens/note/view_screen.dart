import 'package:flutter/material.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'View Note',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomFormCard(title: 'Title', controller: TextEditingController()),
      ),
    );
  }
}
