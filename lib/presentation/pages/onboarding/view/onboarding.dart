import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jewellery_source_code/core/constants/app_colors.dart';
import 'package:jewellery_source_code/core/constants/app_styles.dart';
import 'package:jewellery_source_code/presentation/pages/home/view/home.dart';
import 'package:jewellery_source_code/presentation/pages/onboarding/controller/onboarding_controller.dart';
import 'package:jewellery_source_code/presentation/widgets/app_button.dart';
import 'package:jewellery_source_code/routes/app_routes.dart';


class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      initState:(val){
  Get.isRegistered<OnboardingController>()
              ? Get.find<OnboardingController>()
              : Get.put(OnboardingController());
      },
      builder:(controller)=>Obx(()=>SafeArea(
        top: false,
        child: Scaffold(
          body: SafeArea(
            child: SizedBox(
              child: Column(
                children: [
                  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed:(){
                    controller.pageController.animateToPage(
                                        controller.slides.length - 1,
                                        duration: const Duration(milliseconds: 400),
                                        curve: Curves.linear);
                  }, child: Text("SKIP",style: kAppTextTheme.bodyLarge?.copyWith(
                    color: kPrimaryButtonBackground,
                    fontSize: 16.h,
                    fontWeight: FontWeight.w600
                  ),))
                ],
              ),
                  Expanded(
                    child: PageView(
                      controller: controller.pageController,
                      onPageChanged: (val){
                        controller.index.value=val;
                      },
                      children: List.generate(controller.slides.length, (index)=>Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SlideTile(
                         
                                imagePath: controller.slides[index]
                                              .getImageAssetPath(),
                                          title: controller.slides[index]
                                              .getTitle(),
                                          desc: controller.slides[index]
                                              .getDesc(),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(controller.slides.length, (index){
                                      return Padding(
                                        padding:  EdgeInsets.only(right: 6.0,bottom: 70.0.h),
                                        child: Container(
                                          height: 8,
                                          width:controller.index.value==index?20: 8,
                                          
                                          decoration: BoxDecoration(
                                            borderRadius:controller.index.value==index? BorderRadius.circular(8.0):null,
                                            shape:controller.index.value==index?BoxShape.rectangle: BoxShape.circle,
                                            color:controller.index.value==index? kPrimaryButtonBackground:kDisabledButtonBackground
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                        ),
                ],
              ),
            ),
          ),
          bottomSheet: Obx((){
            return controller.index.value!=controller.slides.length-1?
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                Expanded(
              
                  child: AppButton(
                    height: 55.h,
                    onClick: ()async{
                     controller.pageController.animateToPage(
                                  controller.index.value + 1,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.linear);
                  },
                  child: Text("NEXT",style: kAppTextTheme.titleLarge?.copyWith(
                    color: kWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.h
                  ),),
                  ),
                )
              ]),
            )
            :Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                Expanded(
                  child: AppButton(
                    height: 55.h,
                    onClick: ()async{
                      final storage = GetStorage();
                        storage.write("isFirstTime",false);
                        Go.to(()=>Home());
                  },
                  child: Text("GET STARTED",style: kAppTextTheme.titleLarge?.copyWith(
                    color: kWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.h
                  ),),
                  ),
                )
              ]),
            );
           
          }),
        )))
    );
  }
}

class SlideTile extends StatelessWidget {
  String? imagePath, title, desc;

  SlideTile({super.key, this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                width: width*0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(400.h),
                  image: DecorationImage(image: AssetImage(imagePath!),fit: BoxFit.cover)
                ),
                
                  ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              title!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(desc!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.w400,color: kLightSecondaryText, fontSize: 14))
          ],
        ),
      ),
    );
  }
}