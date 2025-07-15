import 'package:flutter/material.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:time/view/components/custom_text/custom_text.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: 'Privacy Policy',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: '1.Information We Collected',fontWeight: FontWeight.w500,fontSize: 16,),
          SizedBox(height: 10,),
          CustomText(text: 'Personal Information',fontWeight: FontWeight.w500,fontSize: 12,),
          CustomText(text: 'When you sign up, log in, or use our services, we may ask for your personal details, such as your name, email address, phone number, and billing information.',fontWeight: FontWeight.w400,fontSize: 12,maxLines: 3,),
          CustomText(text: 'Usage Data',fontWeight: FontWeight.w500,fontSize: 12,maxLines: 3,),
          SizedBox(height: 5,),
          CustomText(text: 'We collect information about how you interact with our app, such as your usage patterns, features accessed, and session duration',fontWeight: FontWeight.w400,fontSize: 12,),
          CustomText(text: 'Location Data',fontWeight: FontWeight.w500,fontSize: 12,),
          CustomText(text: 'If you are using the mobile app, we may collect location data through GPS (if enabled).',fontWeight: FontWeight.w400,fontSize: 12,maxLines: 3,),
          CustomText(text: '2. How We Use Your Information',fontWeight: FontWeight.w500,fontSize: 16,),
          CustomText(text: 'Provide and improve our services.',fontWeight: FontWeight.w400,fontSize: 12,),
          CustomText(text: 'Customize your user experience based on your preferences.',fontWeight: FontWeight.w400,fontSize: 12,maxLines: 2,),
          CustomText(text: 'Communicate with you about updates, offers, and customer service.',fontWeight: FontWeight.w400,fontSize: 12,maxLines: 2,),
          CustomText(text: 'Monitor and analyze usage to optimize app performance.',fontWeight: FontWeight.w400,fontSize: 12,),
          CustomText(text: 'Comply with legal obligations, enforce our terms of service, and protect the rights of users and our services',fontWeight: FontWeight.w400,fontSize: 12,maxLines: 3,),
          CustomText(text: '3. How We Share Your Information',fontWeight: FontWeight.w500,fontSize: 16,maxLines: 3,),
          CustomText(text: 'Service Providers:',fontWeight: FontWeight.w500,fontSize: 12,maxLines: 3,),
          CustomText(text: 'Trusted third-party vendors who perform services on our behalf (e.g., hosting, payment processing, analytics).',fontWeight: FontWeight.w400,fontSize: 12,maxLines: 3,),
          CustomText(text: 'Legal Requirements',fontWeight: FontWeight.w500,fontSize: 12,maxLines: 3,),
          CustomText(text: 'If required by law, we may disclose your information to comply with legal obligations, resolve disputes, or enforce agreements.',fontWeight: FontWeight.w400,fontSize: 12,maxLines: 3,),
        ],
      ),
    );
  }
}
