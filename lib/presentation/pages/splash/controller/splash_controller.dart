

import 'package:get/get.dart';
import 'package:jewellery_source_code/presentation/pages/onboarding/view/onboarding.dart';
import 'package:jewellery_source_code/routes/app_routes.dart';

class SplashController extends GetxController{


  @override
  void onReady() {
    super.onReady();
    _checkAuthStatus();
  }


Future<void> _checkAuthStatus() async{
  Future.delayed(Duration(seconds: 4),(){
    Go.offAll(()=>Onboarding());
  });
}


}