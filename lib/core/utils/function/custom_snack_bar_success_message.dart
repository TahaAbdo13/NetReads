
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

void customSnackBarSuccessMessage(context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text("Launch is Success",style: Styles.textStyle14,),
      elevation: 0.6,
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      showCloseIcon: true,
      closeIconColor: Colors.green,
      margin: const EdgeInsets.all(20),
      behavior: SnackBarBehavior.floating));
}