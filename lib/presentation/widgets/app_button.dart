import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jewellery_source_code/core/constants/app_colors.dart';
import 'package:jewellery_source_code/core/constants/app_constants.dart';
import 'package:jewellery_source_code/presentation/widgets/app_circular_progress_indicator.dart';

class AppButton extends StatelessWidget {
  final bool isLoading;
  final Color? loaderColor;
  final double? height;
  final double? width;
  final Color? buttonColor;
  final double? elevation;
  final VoidCallback onClick;
  final String? title;
  final TextStyle? titleStyle;
  final Widget? child;
  final double? borderRadius;
  final double? highlightElevation;
  final EdgeInsets? padding;
  final BoxBorder? boxBorder;
  const AppButton({
    super.key,
    this.isLoading = false,
    this.loaderColor,
    this.title,
    this.titleStyle,
    required this.onClick,
    this.height,
    this.width,
    this.buttonColor,
    this.elevation,
    this.child,
    this.borderRadius,
    this.highlightElevation,
    this.padding,
    this.boxBorder,
  }) : assert(title != null || child != null);

  @override
  Widget build(BuildContext context) {
    final bHeight = height ?? 40.h;
    // final bWidth = width ?? double.maxFinite;
    return Container(
      width: width,
      height: bHeight,
      decoration: BoxDecoration(
        color: buttonColor ?? kPrimaryButtonBackground,
        borderRadius: BorderRadius.circular(borderRadius ?? kRadius),
        border: boxBorder,
      ),
      child: Visibility(
        visible: !isLoading,
        replacement: Center(
          child: SizedBox(
            height: bHeight / 2,
            width: bHeight / 2,
            child: AppCircularProgressIndicator(color: loaderColor ?? kWhite),
          ),
        ),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          highlightElevation: highlightElevation ?? 0,
          minWidth: width,
          height: bHeight,
          elevation: elevation ?? 0,
          onPressed: onClick,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? kRadius),
          ),
          child: child ??
              Text(
                title ?? '',
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                
                style: titleStyle ?? Get.textTheme.labelLarge,
              ),
        ),
      ),
    );
  }
}
