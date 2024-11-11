import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview/constants/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? textSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? alignText;
  final TextOverflow? overflow;
  final bool? softwrap;

  const CustomText({
    super.key,
    required this.text,
    this.textSize,
    this.fontWeight,
    this.textColor,
    this.alignText,
    this.overflow,
    this.softwrap,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: textSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
      textAlign: alignText,
      overflow: overflow,
      softWrap: softwrap,
    );
  }
}

class CustomInterText extends StatelessWidget {
  final String text;
  final double? textSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? alignText;
  final TextOverflow? overflow;
  final bool? softwrap;

  const CustomInterText({
    super.key,
    required this.text,
    this.textSize,
    this.fontWeight,
    this.textColor,
    this.alignText,
    this.overflow,
    this.softwrap,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
        fontFamily: fontFamily,
        fontSize: textSize,
        fontWeight: fontWeight,
        color: textColor,
      )),
      textAlign: alignText,
      overflow: overflow,
      softWrap: softwrap,
    );
  }
}

class CustomOpenSansText extends StatelessWidget {
  final String? text;
  final double? textSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? textColor;
  final TextAlign? alignText;
  final TextOverflow? overflow;
  final bool? softWrap;
  final bool? isMoney;

  const CustomOpenSansText({
    super.key,
    required this.text,
    this.textSize,
    this.fontWeight,
    this.textColor,
    this.alignText,
    this.overflow,
    this.softWrap,
    this.isMoney,
    this.fontFamily,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      isMoney == null || isMoney == false
          ? text ?? ''
          : "$currency${text?.replaceAllMapped(reg, mathFunc) ?? ''}",
      style: GoogleFonts.inter(
          textStyle: TextStyle(
        fontFamily: fontFamily,
        fontSize: textSize,
        fontWeight: fontWeight,
        color: textColor,
            fontStyle: fontStyle
      )),
      textAlign: alignText,
      overflow: overflow,
      softWrap: softWrap,
    );
  }
}
