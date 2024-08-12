import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

void customSnackBarErrorMessage(context, Uri url) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Cannot Launch $url", style: Styles.textStyle14),
      elevation: 0.6,
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      showCloseIcon: true,
      closeIconColor: Colors.red,
      margin: const EdgeInsets.all(20),
      behavior: SnackBarBehavior.floating));
}
