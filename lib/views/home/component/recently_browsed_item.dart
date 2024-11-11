import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'package:interview/constants/app_assets.dart';
import 'package:interview/widgets/custom_text.dart';

class RecentlyBrowsedItem extends StatelessWidget {
  const RecentlyBrowsedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199.h,
      margin: EdgeInsets.only(right: 19.w),
      child: Stack(
        children: [
          Container(
            height: 170.h,
            width: 127.w,
            decoration: BoxDecoration(
              color: AppTheme.imagePink,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          Positioned(
              top: 12.h,
              right: 12.w,
              child: SvgPicture.asset(AppAssets.like)),
          Positioned(
            top: 182.h,
            left: 0,
            child: CustomOpenSansText(
              text: "2 days left",
              fontWeight: FontWeight.w400,
              textSize: 14.sp,
              textColor: AppTheme.black,
            ),)
        ],
      ),
    );
  }
}
