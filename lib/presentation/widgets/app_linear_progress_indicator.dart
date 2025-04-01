import 'package:flutter/material.dart';
import 'package:jewellery_source_code/core/constants/app_colors.dart';
import 'package:jewellery_source_code/core/constants/app_constants.dart';


class AppLinearProgressIndicator extends StatelessWidget {
  final double? width;
  final Color? color;
  const AppLinearProgressIndicator({super.key,this.width,this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kRadius * 2),
        child: LinearProgressIndicator(
          color:color?? kPrimaryColor,
          backgroundColor:color!=null?color?.withOpacity(.5): kPrimaryColor.withOpacity(.5),
        ),
      ),
    );
  }
}