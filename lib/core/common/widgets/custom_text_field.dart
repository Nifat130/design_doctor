

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:design_doctor/core/utils/constants/app_sizer.dart';

import '../../utils/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.fontSize = 14,
    this.textAlign = TextAlign.start,
    this.validator,
    this.boarderColor,
    this.boarderSide,
    this.hintTextColor,
    this.textColor,
    this.keyboardType = TextInputType.text,
    this.readOnly = false, this.prefixIcon,
   this.fillColor, this.maxLine =1,this.radius = 8, // Default to TextInputType.text
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final dynamic fillColor;
  final TextAlign textAlign;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool readOnly;
  final double fontSize;
  final int maxLine;
  final double radius;
  final Color? boarderColor;
  final Color? hintTextColor;
  final Color? textColor;
  final BorderSide? boarderSide;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.inter(
        color: textColor ?? AppColors.textPrimary,
        fontWeight: FontWeight.w400,
        fontSize: fontSize.sp,
        height: 20 / 14,
      ),
      maxLines:maxLine ,
      readOnly: readOnly,
      keyboardType: keyboardType, // Use optional keyboard type
      obscureText: obscureText,
      controller: controller,
      textAlign: textAlign,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: GoogleFonts.dmSans(
          color: hintTextColor ?? AppColors.textSecondary,
          fontWeight: FontWeight.w400,
          fontSize: fontSize.sp,
          height: 20 / 14,
        ),
        fillColor:fillColor ?? Colors.transparent, // Make background transparent
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: boarderSide ?? BorderSide(color: boarderColor ?? AppColors.borderColor, width: 0.5),
          borderRadius: BorderRadius.circular(radius)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: boarderSide ?? BorderSide(color: boarderColor ?? AppColors.borderColor, width: 0.5),
            borderRadius: BorderRadius.circular(radius)
        ),
        contentPadding: EdgeInsets.only(left: 12.w,right: 10.w,top: 12.h,bottom: 12.h),
      ),
      validator: validator,
      onTapOutside: (c){
        FocusScope.of(context).unfocus();
      },
    );
  }
}
