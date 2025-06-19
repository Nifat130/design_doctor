import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:design_doctor/core/utils/constants/app_sizer.dart';

import '../../utils/constants/app_colors.dart';
import 'custom_text.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;

  const CustomAppbar({super.key, required this.title, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      elevation: 5,
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.h), // Bottom left rounded
          bottomRight: Radius.circular(16.h), // Bottom right rounded
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 12), // Proper spacing
        child: InkWell(
          onTap: onBackPressed ?? () => Get.back(),
          borderRadius: BorderRadius.circular(10), // Smooth touch effect
          child: Container(
            width: 32.h,
            height: 32.w,
            padding: EdgeInsets.only(left: 4),
            // Proper padding for icon
            decoration: BoxDecoration(
              color: AppColors.secondary,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                size: 14,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ),
      ),
      title: CustomText(
        text: title,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
