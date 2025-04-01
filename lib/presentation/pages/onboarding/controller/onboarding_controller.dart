import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewellery_source_code/core/constants/app_images.dart';


class OnboardingController extends GetxController{
  final loading = false.obs;
  List onboardList=[
    {
      'title':'The best jewelery in the town now.',
      'description':"It is referred as diamond city percent of the world's diamonds are polished in this city.",
      'url':AppImages.icOnboard1,
    },
    {
      'title':'Choose from our virtual jewelery store.',
      'description':'Jewellery salary in india with less than 1 year of experience to 15 years range.',
      'url':AppImages.icOnboard2,
    },
    {
      'title':"The discover world's best jewellery.",
      'description':'The individual we introduce to you today has achieved that is simply unparalleled.',
      'url':AppImages.icOnboard3,
    },
  ];
   List<SliderModel> slides = [];
  RxInt index = 0.obs;
  PageController pageController = PageController(initialPage: 0);

  @override
  void onInit() {
    super.onInit();
   getSlides();
  }


void getSlides() {
    SliderModel sliderModel = SliderModel();
    for (int i = 0; i < onboardList.length; i++) {
      // sliderModel.setImageAssetPath(lottieurl[i]);
      sliderModel.setImageAssetPath(onboardList[i]["url"]??'');
      sliderModel.setTitle(onboardList[i]["title"]??'');
      sliderModel.setDesc(onboardList[i]["description"]??'');
      slides.add(sliderModel);
      sliderModel = SliderModel();
    }
    loading(false);
  }

//PAGE INDICATOR UI
  Widget buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.green : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }


}


class SliderModel {
  String? imagePath;
  String? title;
  String? desc;

  SliderModel({this.imagePath, this.title, this.desc});
  void setImageAssetPath(String getImagepath) {
    imagePath = getImagepath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String? getImageAssetPath() {
    return imagePath;
  }

  String? getTitle() {
    return title;
  }

  String? getDesc() {
    return desc;
  }
}