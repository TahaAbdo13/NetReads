import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrMessage extends StatelessWidget {
  final String errMessage ;
  const CustomErrMessage({
    super.key, required this.errMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage,style: Styles.textStyle18,));
  }
}