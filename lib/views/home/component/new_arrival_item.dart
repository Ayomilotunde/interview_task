import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'package:interview/constants/app_assets.dart';
import 'package:interview/utils/util_helpers.dart';
import 'package:interview/widgets/custom_text.dart';

class NewArrivalItem extends StatelessWidget {
  const NewArrivalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 327.h,
      margin: EdgeInsets.only(right: 19.w
      ),
      child: Stack(
        children: [
          Container(
            height: 257.h,
            width: 199.w,
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
            top: 269.h,
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomOpenSansText(
                  text: "Game of Thrones",
                  fontWeight: FontWeight.w600,
                  textSize: 16.sp,
                  textColor: AppTheme.black,
                ),
                YMargin(4.h),
                CustomOpenSansText(
                  text: "George R.R Martin",
                  fontWeight: FontWeight.w400,
                  textSize: 12.sp,
                  textColor: AppTheme.grey[500],
                ),
                Row(
                  children: [
                    const Icon(Icons.star_border, color: AppTheme.black, size: 16,),
                    XMargin(.5.w),
                    CustomOpenSansText(
                      text: "4.5",
                      fontWeight: FontWeight.w400,
                      textSize: 12.sp,
                      textColor: AppTheme.grey[500],
                    ),
                  ],
                )
              ],
            ),)
        ],
      ),
    );
  }
}
