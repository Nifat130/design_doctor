import 'package:design_doctor/core/common/widgets/custom_text.dart';
import 'package:design_doctor/core/utils/constants/app_sizer.dart';
import 'package:design_doctor/core/utils/constants/logo_path.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(LogoPath.financeAppLogo, fit: BoxFit.fill,),
              SizedBox(height: 12.h,),
              CustomText(text: "FinWise", color: const Color(0xFF00D09E),fontSize: 52.sp, fontWeight: FontWeight.bold, textAlign: TextAlign.center,),

            ],
          ),
        ),
      ),
    );
  }
}
