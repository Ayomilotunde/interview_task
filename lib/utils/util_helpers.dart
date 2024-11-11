import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview/app/themes/app_theme.dart';

double width(double width) {
  return ((width / 100.w) * 100).w;
}

double height(double height) {
  return ((height / 100.h) * 100).h;
}

class XMargin extends StatelessWidget {
  final double x;
  // ignore: use_key_in_widget_constructors
  const XMargin(this.x);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: x);
  }
}

class YMargin extends StatelessWidget {
  final double y;
  // ignore: use_key_in_widget_constructors
  const YMargin(this.y);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: y);
  }
}

void setSnackBar(String title, String content,
    {Color? color, Color? textColor}) =>
    Get.snackbar(title, content,

        colorText: textColor ?? AppTheme.black,
        backgroundColor: color ?? AppTheme.primaryColor);

Future<void> bottomSheet(BuildContext context, Widget child, {double? height}) {
  return showModalBottomSheet(
      isScrollControlled: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(13), topRight: Radius.circular(13))),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) => SizedBox(
          height: height ?? MediaQuery.of(context).size.height / 3,
          child: child));
}

String ordinal(int number) {
  if (!(number >= 1 && number <= 100)) {
    throw Exception('Invalid number');
  }

  if (number >= 11 && number <= 13) {
    return 'th';
  }

  switch (number % 10) {
    case 1:
      return 'st';
    case 2:
      return 'nd';
    case 3:
      return 'rd';
    default:
      return 'th';
  }
}
