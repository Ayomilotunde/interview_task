import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview/app/data/models/books.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'package:interview/utils/util_helpers.dart';
import 'package:interview/widgets/custom_text.dart';

class BookItem extends StatelessWidget {
  final Book book;
  const BookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 153.h,
      margin: EdgeInsets.only(bottom: 25.h),
      decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: .01)
      ),
      child: Row(
        children: [
          Container(
            height: 153.h,
            width: 103.w,
            decoration: BoxDecoration(
              color: AppTheme.imagePink,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          XMargin(16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomOpenSansText(
                text: book.title,
                fontWeight: FontWeight.w600,
                textSize: 16.sp,
                textColor: AppTheme.black,
              ),
              YMargin(10.h),
              CustomOpenSansText(
                text: book.author,
                fontWeight: FontWeight.w400,
                textSize: 12.sp,
                textColor: AppTheme.grey[500],
              ),
              YMargin(10.h),
              Row(
                children: [
                  const Icon(Icons.star_border, color: AppTheme.black, size: 16,),
                  XMargin(.5.w),
                  CustomOpenSansText(
                    text: book.rating,
                    fontWeight: FontWeight.w400,
                    textSize: 12.sp,
                    textColor: AppTheme.grey[500],
                  ),
                ],
              ),
              YMargin(10.h),
              CustomOpenSansText(
                text: "3 days left",
                fontWeight: FontWeight.w600,
                textSize: 16.sp,
                textColor: AppTheme.black,
              ),
            ],
          )

        ],
      ),
    );
  }
}
