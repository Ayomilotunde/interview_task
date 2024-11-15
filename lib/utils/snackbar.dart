import 'package:flutter/material.dart';
import 'package:interview/app/themes/app_theme.dart';
import 'package:interview/widgets/custom_text.dart';

void displaySnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
  ));
}

void openSnackBar(BuildContext context, snackMessage, color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color,
      action: SnackBarAction(
        label: "OK",
        textColor: Colors.white,
        onPressed: () {},
      ),
      duration: const Duration(milliseconds: 3000),
      content: Text(
        snackMessage,
        style: const TextStyle(fontSize: 14),
      )));
}

void openSnackBarAuth(BuildContext context, snackMessage, color, onPressed) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color,
      action: SnackBarAction(
        label: "Login",
        textColor: Colors.white,
        onPressed: onPressed,
      ),
      duration: const Duration(milliseconds: 3000),
      content: Text(
        snackMessage,
        style: const TextStyle(fontSize: 14),
      )));
}
void openSnackBarActivation(BuildContext context, snackMessage, color, onPressed) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color,
      action: SnackBarAction(
        label: "Activate",
        textColor: Colors.white,
        onPressed: onPressed,
      ),
      duration: const Duration(milliseconds: 3000),
      content: Text(
        snackMessage,
        style: const TextStyle(fontSize: 14),
      )));
}

void openSnackBarDark(BuildContext context, snackMessage, color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color,
      action: SnackBarAction(
        label: "OK",
        textColor: AppTheme.primaryColor,
        onPressed: () {},
      ),
      duration: const Duration(milliseconds: 3000),
      content: CustomOpenSansText(
        text: snackMessage,
        textSize: 14,
        textColor: AppTheme.primaryColor,
      )));
}
