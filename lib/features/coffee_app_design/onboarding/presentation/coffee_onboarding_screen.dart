import 'package:design_doctor/core/utils/constants/app_colors.dart';
import 'package:design_doctor/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';

class CoffeeOnboardingScreen extends StatelessWidget {
  const CoffeeOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(ImagePath.coffee_image, fit: BoxFit.fill,),
        ],
      ),
    );
  }
}
