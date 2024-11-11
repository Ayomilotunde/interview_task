import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'package:interview/constants/app_assets.dart';
import 'package:interview/utils/util_helpers.dart';
import 'package:interview/views/notification/notification_view.dart';
import 'package:interview/widgets/custom_text.dart';

class DashboardAppBar extends StatelessWidget {

  const DashboardAppBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Row(
              children: [
                Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppTheme.grey[100]),
                      ),
                const XMargin(8),

              ],
            ),
            Column(
              children: [
                CustomOpenSansText(
                  text: 'Welcome Back!',
                  textSize: 12,
                  fontWeight: FontWeight.w400,
                  textColor: AppTheme.grey[300],
                ),
                YMargin(4.h),
                const CustomOpenSansText(
                  text: 'Ovie Victor',
                  textSize: 16,
                  fontWeight: FontWeight.w600,
                  textColor: AppTheme.black,
                ),
              ],
            )
          ],
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => const NotificationView());
          },
          child: SvgPicture.asset(
            AppAssets.notification,
            alignment: Alignment.topCenter,
          ),
        )
      ],
    );
  }
}

