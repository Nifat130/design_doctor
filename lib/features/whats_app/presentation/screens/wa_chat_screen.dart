import 'package:design_doctor/core/common/widgets/custom_text.dart';
import 'package:design_doctor/core/common/widgets/custom_text_field.dart';
import 'package:design_doctor/core/utils/constants/app_colors.dart';
import 'package:design_doctor/core/utils/constants/app_sizer.dart';
import 'package:design_doctor/core/utils/constants/image_path.dart';
import 'package:design_doctor/features/whats_app/controllers/whats_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhatsAppChatScreen extends GetView<WhatsAppController> {
  const WhatsAppChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(ImagePath.whatsAppBG), fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.wASecondary,
                ),
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    child: Row(
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(ImagePath.whatsAppBG,), fit: BoxFit.fitWidth)
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 18,
                child: CustomTextField(
                  controller: controller.messageTEController,
                  hintText: "Message",
                  hintTextColor: AppColors.white,
                  radius: 99.w,
                  prefixIcon: GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.sticky_note_2_outlined, color: AppColors.iconColor,),
                  ),
                  fillColor: AppColors.wASecondary,
                  boarderSide: BorderSide.none,
                  suffixIcon: SizedBox(
                    width: 70.w,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 10.w,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){},
                            child: Icon(Icons.link_outlined, color: AppColors.iconColor,),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Icon(Icons.camera_alt_outlined, color: AppColors.iconColor,),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ),
              SizedBox(width: 8.w,),
              Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.wAButton
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Icon(Icons.send, color: AppColors.white,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
