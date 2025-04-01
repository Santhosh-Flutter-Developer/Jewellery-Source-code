import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Go {
  /// Similar to **Navigation.push()**
  static Future<T?> to<T>(dynamic page, {dynamic arguments, Transition? transition, bool? opaque, Duration? duration}) async {
    return await Get.to<T>(page,
        arguments: arguments,
        transition: transition ?? Transition.rightToLeft,
        duration: duration ?? const Duration(milliseconds: 250),
        opaque: opaque);
  }

  /// Similar to **Navigation.pushReplacement**
  static Future<dynamic> off(dynamic page, {dynamic arguments, Transition? transition}) async {
    return await Get.off(
      page,
      arguments: arguments,
      transition: transition ?? Transition.rightToLeft,
      duration: const Duration(milliseconds: 250),
    );
  }

  /// Removes everything form the navigation stack
  static Future<dynamic> offAll(dynamic page, {dynamic arguments, Transition? transition}) async {
    return await Get.offAll(
      page,
      arguments: arguments,
      transition: transition ?? Transition.rightToLeft,
      duration: const Duration(milliseconds: 250),
    );
  }

  /// Similar to **Navigation.pushAndRemoveUntil()**
  static Future<T?> offUntil<T>(dynamic page, {Transition? transition, required RoutePredicate route}) async {
    return Get.offUntil<T>(
      GetPageRoute(
        page: page,
        transition: transition ?? Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 250),
      ),
      route,
    );
  }

  static Future<dynamic> until(String page) async {
    Get.until((route) {
      return Get.currentRoute == page;
    });
  }
}