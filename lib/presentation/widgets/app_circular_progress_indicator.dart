import 'package:flutter/material.dart';
import 'package:jewellery_source_code/core/constants/app_colors.dart';


class AppCircularProgressIndicator extends StatelessWidget {
  final Color? color;
  const AppCircularProgressIndicator({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 1.5,
      color: color ?? kPrimaryColor,
    );
  }
}