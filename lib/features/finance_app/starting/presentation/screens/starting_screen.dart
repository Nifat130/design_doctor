import 'package:design_doctor/core/common/widgets/custom_text.dart';
import 'package:design_doctor/core/utils/constants/app_sizer.dart';
import 'package:design_doctor/core/utils/constants/logo_path.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1FFF3),
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
              SizedBox(
                width: 236.w,
                child: CustomText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. ", fontWeight: FontWeight.w300, fontSize: 12.sp, textAlign: TextAlign.center,),
              ),
              SizedBox(height: 70.h,),
              OutlinedButton(
                onPressed: (){},
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xFF00D09E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99.h),
                    side: BorderSide(color: const Color(0xFF00D09E))
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 56.w),
                  child: CustomText(text: "Log In", fontWeight: FontWeight.w500, fontSize: 18,)
                ),
              ),
              SizedBox(height: 12.h,),
              OutlinedButton(
                onPressed: (){},
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xFFDFF7E2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99.h),
                      side: BorderSide.none
                  ),
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 48.w),
                    child: CustomText(text: "Sign Up", fontWeight: FontWeight.w500, fontSize: 18,)
                ),
              ),
              SizedBox(height: 12.h,),
              GestureDetector(
                onTap: (){},
                child: CustomText(text: "Forgot Password?", fontWeight: FontWeight.bold,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
