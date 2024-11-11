import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'package:interview/utils/util_helpers.dart';
import 'package:interview/widgets/custom_text.dart';

import '../../../constants/app_assets.dart';

class NotificationItem extends StatelessWidget {
  final bool isAccepted;
  final String title;
  final String time;
  final String subTitle;

  const NotificationItem({
    super.key,
    required this.isAccepted,
    required this.title,
    required this.time,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.0.h),
      child: Row(
        children: [
          SvgPicture.asset(isAccepted ? AppAssets.tick : AppAssets.close),
          XMargin(12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOpenSansText(
                      text: title,
                      fontWeight: FontWeight.w600,
                      textSize: 14.sp,
                      textColor: AppTheme.black,
                    ),
                    CustomOpenSansText(
                      text: time,
                      fontWeight: FontWeight.w400,
                      textSize: 12.sp,
                      textColor: AppTheme.black,
                    ),
                  ],
                ),
                YMargin(4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOpenSansText(
                      text: subTitle,
                      fontWeight: FontWeight.w400,
                      textSize: 12.sp,
                      textColor: AppTheme.black,
                    ),
                    XMargin(12.w),
                    Container(
                      height: 8.h,
                      width: 8,
                      decoration: const BoxDecoration(color: AppTheme.red, shape: BoxShape.circle),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
