
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:design_doctor/core/utils/constants/app_sizer.dart';

import '../../utils/constants/icon_path.dart';
import 'custom_text.dart';

Widget backHeading(String title){

  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: (){
          Get.back();
        },
        child: Image.asset(IconPath.backIcon),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomText(text: title, fontWeight: FontWeight.w500, fontSize: 16.sp,),
      )
    ],
  );
}