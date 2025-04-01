import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jewellery_source_code/core/constants/app_constants.dart';

class AppSvgImage extends StatelessWidget {
  final String path;
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final Color? iconColor;

  const AppSvgImage({
    super.key,
    required this.path,
    this.padding,
    this.onTap,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(kRadius),
        onTap: onTap,
        child: Container(
          padding: padding ?? EdgeInsets.symmetric(horizontal: kWidth * .5, vertical: kHeight * .5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(kRadius)),
          child: SvgPicture.asset(
            path,
            height: height,
            width: width,
            fit: fit,
            alignment: alignment,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
