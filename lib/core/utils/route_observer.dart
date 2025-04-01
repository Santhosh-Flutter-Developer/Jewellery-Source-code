import 'package:flutter/material.dart';
import 'package:get/get.dart';

var rCurrentRoute = Get.currentRoute.obs;

void getCurrentRoute() {
  rCurrentRoute.value = Get.currentRoute;
}

class CustomRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    getCurrentRoute();
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    getCurrentRoute();
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    getCurrentRoute();
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    getCurrentRoute();
  }
}
