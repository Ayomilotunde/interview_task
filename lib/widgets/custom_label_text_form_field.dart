import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'custom_text.dart';

class CustomLabelInputText extends StatelessWidget {
  const CustomLabelInputText({
    super.key,
    required this.label,
    this.controller,
    this.placeholder,
    this.counterText,
    this.maxLength,
    this.maxLines,
    this.minLines,
    required this.keyboardType,
    required this.inputAction,
    this.validate,
    this.enabled,
    this.obscureText = false,
    this.readOnly = false,
    this.required = false,
    this.labelColor,
    this.borderColor,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.sentences,
    this.suffixIcon,
    this.prefixIcon,
    this.onKeyUp,
    this.fontStyle,
    this.fontWeight,
  });

  final String label;
  final TextEditingController? controller;
  final String? placeholder;
  final String? counterText;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final FormFieldValidator<String>? validate;
  final bool? enabled;
  final bool obscureText;
  final bool readOnly;
  final bool required;
  final Color? labelColor;
  final Color? borderColor;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final Function(String)? onKeyUp;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomOpenSansText(
              text: label,
              textColor: labelColor ?? Colors.black,
              textSize: 12.sp,
              fontStyle: fontStyle,
              fontWeight: fontWeight,
            ),
            if (required)
              CustomOpenSansText(
                text: "*",
                textColor: AppTheme.primaryColor,
                textSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        TextFormField(
          onChanged: onKeyUp,
          controller: controller,
          validator: validate,
          textInputAction: inputAction,
          keyboardType: keyboardType,
          maxLength: maxLength,
          maxLines: maxLines,
          minLines: minLines,
          decoration: InputDecoration(
              fillColor: AppTheme.grey[100]?.withOpacity(.3),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 13.0,
                horizontal: 10.0,
              ),
              border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
              // border: InputBorder.none,
              filled: true,
              hintText: placeholder,
              prefixIcon: prefixIcon,
              counterText: counterText,
              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey[600]),
              // border: InputBorder.none,
              suffixIcon: suffixIcon,
              suffixIconConstraints: const BoxConstraints(maxHeight: 30, maxWidth: 35, minHeight: 20)),
          readOnly: readOnly,
          enabled: enabled,
          cursorColor: AppTheme.primaryColor,
          inputFormatters: inputFormatters,
          textCapitalization: textCapitalization,
          obscureText: obscureText,
        ),
      ],
    );
  }
}

class CustomInputText extends StatelessWidget {
  const CustomInputText({
    super.key,
    required this.label,
    this.controller,
    this.placeholder,
    this.counterText,
    this.maxLength,
    this.maxLines,
    this.letterSpacing,
    required this.keyboardType,
    required this.inputAction,
    this.validate,
    this.enabled,
    this.obscureText = false,
    this.readOnly = false,
    this.required = false,
    this.labelColor,
    this.borderColor,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.sentences,
    this.suffixIcon,
    this.prefixIcon,
    this.onKeyUp,
  });

  final String label;
  final TextEditingController? controller;
  final String? placeholder;
  final String? counterText;
  final int? maxLength;
  final int? maxLines;
  final double? letterSpacing;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final FormFieldValidator<String>? validate;
  final bool? enabled;
  final bool obscureText;
  final bool readOnly;
  final bool required;
  final Color? labelColor;
  final Color? borderColor;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onKeyUp;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 68,
      child: TextFormField(
        onChanged: onKeyUp,
        controller: controller,
        validator: validate,
        textInputAction: inputAction,
        keyboardType: keyboardType,
        maxLength: maxLength,
        maxLines: maxLines,
        style: TextStyle(
          letterSpacing: letterSpacing,
        ),
        decoration: InputDecoration(
            fillColor: Colors.white,
            counter: const SizedBox.shrink(),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 10.0,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor ?? AppTheme.borderLight, width: .1),
                borderRadius: BorderRadius.circular(10)),
            hintText: placeholder,
            prefixIcon: prefixIcon,
            counterText: counterText,
            hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            // border: InputBorder.none,
            suffixIcon: suffixIcon,
            suffixIconConstraints: const BoxConstraints(maxHeight: 30, maxWidth: 35, minHeight: 20)),
        readOnly: readOnly,
        enabled: enabled,
        cursorColor: AppTheme.primaryColor,
        inputFormatters: inputFormatters,
        textCapitalization: textCapitalization,
        obscureText: obscureText,
      ),
    );
  }
}

class CustomLabelUnderlineInputText extends StatelessWidget {
  const CustomLabelUnderlineInputText({
    super.key,
    required this.label,
    required this.controller,
    this.placeholder,
    this.maxLength,
    required this.keyboardType,
    required this.inputAction,
    this.validate,
    this.enabled,
    this.obscureText = false,
    this.readOnly = false,
    this.labelColor,
    this.borderColor,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.sentences,
    this.suffixIcon,
    this.prefixIcon,
    this.onKeyUp,
    this.onEditingComplete,
  });

  final String label;
  final TextEditingController controller;
  final String? placeholder;
  final int? maxLength;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final FormFieldValidator<String>? validate;
  final bool? enabled;
  final bool obscureText;
  final bool readOnly;
  final Color? labelColor;
  final Color? borderColor;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onKeyUp;
  final Function()? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: CustomOpenSansText(
            text: label,
            textColor: labelColor ?? Colors.black,
            textSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          height: 45,
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
          decoration: BoxDecoration(
            // color: Colors.grey.shade100,
            border: Border.all(color: borderColor ?? Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(3)),
          ),
          child: TextFormField(
            onChanged: onKeyUp,
            onEditingComplete: onEditingComplete,
            controller: controller,
            validator: validate,
            textInputAction: inputAction,
            keyboardType: keyboardType,
            maxLength: maxLength,
            style: const TextStyle(fontSize: 16),
            decoration: InputDecoration(
                fillColor: Colors.grey,
                contentPadding: const EdgeInsets.only(bottom: 11),
                hintText: placeholder,
                prefixIcon: prefixIcon,
                hintStyle: const TextStyle(fontSize: 14),
                // border: InputBorder.none,
                suffixIcon: suffixIcon,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                suffixIconConstraints: const BoxConstraints(maxHeight: 30, maxWidth: 24, minHeight: 20)),
            readOnly: readOnly,
            enabled: enabled,
            cursorColor: AppTheme.primaryColor,
            inputFormatters: inputFormatters,
            textCapitalization: textCapitalization,
            obscureText: obscureText,
          ),
        ),
      ],
    );
  }
}
