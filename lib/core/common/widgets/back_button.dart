// import 'package:fidelia/core/utils/constants/app_sizer.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../utils/constants/app_colors.dart';
// import 'custom_text.dart';
//
// class AppBarWidget extends StatelessWidget {
//   final String? title;
//   final IconData? actionIcon;
//   final bool isTile;
//   final bool isAction;
//   final VoidCallback? onPressed;
//   final Color? borderColor;
//   final Color? iconColor;
//   final Widget? routeName;
//
//   const AppBarWidget({
//     super.key,
//     this.title,
//     this.actionIcon,
//     this.isTile = false,
//     this.isAction = false,
//     this.onPressed,
//     this.borderColor,
//     this.iconColor,
//     this.routeName,// Add iconColor as a parameter
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         // Leading Icon Button (Back Button)
//         Container(
//           height: 44.h,
//           width: 44.w,
//           margin: EdgeInsets.only( right: 6.w),
//           //padding: EdgeInsets.only(left: 1.w, right: 6.w),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10.h),
//             color: AppColors.white,
//             border: Border.all(
//               width: 1,
//               color: AppColors.borderColor, // Use borderColor directly
//             ),
//           ),
//           child: Align(
//             alignment: Alignment.center,
//             child: IconButton(
//               icon: const Icon(
//                 Icons.arrow_back_ios_new_outlined,
//                 color: AppColors.textPrimary,
//                 size: 16,
//               ),
//                 onPressed: () {
//     if (routeName != null) {
//     Get.to(routeName!); // Navigate to the specified route
//     } else {
//     Get.back(); // Default behavior: go back
//     }},
//             ),
//           ),
//         ),
//
//         // Title (Only if isTile is true)
//         if (isTile && title != null)
//           CustomText(
//             text: title!,
//             fontSize: 18.sp,
//             color: AppColors.black,
//             fontWeight: FontWeight.w600,
//           ),
//
//         // Actions (Icon Button)
//         if (isAction)
//           Container(
//             height: 44.h,
//             width: 44.w,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.h),
//               color: Colors.transparent,
//               border: Border.all(
//                 width: 1,
//                 color: borderColor ?? Colors.transparent, // Use borderColor directly
//               ),
//             ),
//             child: Align(
//               alignment: Alignment.center,
//               child: IconButton(
//                 icon: actionIcon != null
//                     ? Icon(actionIcon)
//                     : Icon(
//                   Icons.search_outlined,
//                   color: iconColor ?? Colors.transparent,
//                   size: 16,// Use iconColor directly
//                 ),
//                 onPressed: onPressed,
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
//
