import 'package:design_doctor/core/common/widgets/custom_text.dart';
import 'package:design_doctor/core/utils/constants/app_colors.dart';
import 'package:design_doctor/core/utils/constants/app_sizer.dart';
import 'package:design_doctor/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';

class WhatsAppChatScreen extends StatelessWidget {
  const WhatsAppChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wAPrimary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back, color: AppColors.white,),
                      SizedBox(width: 4.w,),
                      ClipOval(
                        child: Image.asset(ImagePath.profileNCM, fit: BoxFit.fill, height: 40.h, width: 40.w,),
                      ),
                      SizedBox(width: 8.w,),
                      CustomText(text: "Nifat ", color: AppColors.white,)
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 24.w,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.video_camera_back_outlined, color: AppColors.white,),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.call_outlined, color: AppColors.white,),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.more_vert_outlined, color: AppColors.white,),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
