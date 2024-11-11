import 'package:flutter/material.dart';
import 'package:interview/app/themes/app_theme.dart';

class CustomSearchBox extends StatelessWidget {
  final Function(String)? onChanged;
  const CustomSearchBox({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: AppTheme.black.withOpacity(.05),
        filled: true,
        hintStyle:  const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 16),
        enabled: true,

        prefixIcon: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Icon(
            Icons.search,
            color: Colors.grey,
            size: 24,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

