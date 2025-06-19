

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:design_doctor/core/utils/constants/app_sizer.dart';


import '../../utils/constants/app_colors.dart';


class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final TextDecoration? decoration;
  final Color? decorationColor;

  final TextAlign? textAlign;
  const CustomText(
      {super.key,
        required this.text,
        this.maxLines,
        this.textOverflow,
        this.fontSize,
        this.color,
        this.fontWeight,
        this.decoration,
        this.decorationColor, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: GoogleFonts.dmSans(
        //fontFamily: 'SukhumvitSet',  // Using SukhumvitSet font
        decoration: decoration,
        decorationColor: decorationColor ?? const Color(0xffA59F92),
        fontSize: fontSize ?? 14.sp,
        color: color ?? AppColors.textPrimary,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}
