import 'package:flutter/material.dart';
import 'package:design_doctor/core/utils/constants/app_sizer.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../utils/constants/app_colors.dart';
import '../../utils/constants/icon_path.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final dynamic buttonColor,
      borderColor,
      iconColor; // Can be either Color or Gradient
  final Color buttonTextColor;
  final double radius, height;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String title;
  final String? icon;
  final bool isIcon;

  const CustomButton({
    super.key,
    required this.onPressed,
    this.buttonColor = AppColors.primary,
    this.buttonTextColor = Colors.white,
    required this.title,
    this.borderColor,
    this.fontWeight,
    this.fontSize,
    this.isIcon = true,
    this.iconColor = AppColors.white,
    this.radius = 8,
    this.height = 44,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        //padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          gradient: buttonColor is Gradient ? buttonColor : null,
          // Use gradient if provided
          color: buttonColor is Color ? buttonColor : const Color(0xff403B3E),
          // Default color if no gradient is passed
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            width: 1,
            color:
                borderColor ??
                AppColors
                    .primary, // Use borderColor if provided or fallback to default
          ),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: GoogleFonts.dmSans(
                  color: buttonTextColor,
                  fontWeight: fontWeight ?? FontWeight.w600,
                  fontSize: fontSize ?? 16.sp,
                  height: 22 / 16,
                  letterSpacing: -0.6,
                ),
              ),
              if (isIcon == false)
                SizedBox(width: 12.w),
              if (isIcon == false)
                Image.asset(
                  icon ?? IconPath.arrowRight,
                  width: 24.w,
                  height: 24.h,
                  color: iconColor,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
