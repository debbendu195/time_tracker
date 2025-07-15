import 'package:flutter/material.dart';
import 'package:time/view/components/custom_button/custom_button.dart';

import '../../components/custom_from_card/custom_from_card.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _formKey = GlobalKey<FormState>();
  String imageHint = 'Select image';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Create Note',
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomFormCard(title: 'title', controller: TextEditingController()),
            CustomFormCard(title: 'description', controller: TextEditingController()),
            Row(
              children: [
                Expanded(child: Text(imageHint)),
                Expanded(
                  child:
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.image),
                    ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            CustomButton(
              height: 80,
              width: 200,
              onTap: (){},
              title: 'Save',
            ),
          ],
        ),
      ),
    );
  }
}
