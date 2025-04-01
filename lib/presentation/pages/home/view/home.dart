import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:jewellery_source_code/core/constants/app_colors.dart';
import 'package:jewellery_source_code/core/constants/app_constants.dart';
import 'package:jewellery_source_code/core/constants/app_images.dart';
import 'package:jewellery_source_code/core/constants/app_styles.dart';
import 'package:jewellery_source_code/presentation/pages/home/controller/home_controller.dart';
import 'package:jewellery_source_code/presentation/widgets/app_svg.dart';
import 'package:jewellery_source_code/presentation/widgets/product_widget.dart';
import 'package:responsive_grid/responsive_grid.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return  GetBuilder<HomeController>(
      initState: (val) {
          Get.isRegistered<HomeController>()
              ? Get.find<HomeController>()
              : Get.put(HomeController());
        },
      builder:(controller) =>  Scaffold(
            appBar: AppBar(
                      leading: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSvgImage(path: AppImages.icMenu,height: 24,width: 24,),
            ],
                      ),
                     
                      actions: [
             AppSvgImage(path: AppImages.icHeart,height: 24,width: 24,),
             SizedBox(
              width: 10.w,
             ),
              AppSvgImage(path: AppImages.icCart,height: 24,width: 24,),
              SizedBox(
              width: 10.w,
             ),
               AppSvgImage(path: AppImages.icNotification,height: 24,width: 24,),
                      ],
                   
                    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: kWhite,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.h),
                    color: kDisabledButtonBackground.withOpacity(0.2)
                  ),
                  child: Row(
                    children: [
                      AppSvgImage(path: AppImages.icSearch,height: 24,width: 24,iconColor: kDisabledButtonBackground,),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('Search for jewellery',style: kAppTextTheme.bodyLarge?.copyWith(
                        fontSize: 14.h,
                        color: kDisabledButtonBackground
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            CarouselSlider(items: [
                for(int i=0;i<controller.response["banner"]!.length;i++)
                SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset(controller.response["banner"]?[i]["image"]??'',fit: BoxFit.cover,),
              ),
              ], options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
              )),
              SizedBox(
                height: kHeight*2,
              ),
              Text('Find Your Perfect Match',  style: kAppTextTheme.bodyLarge?.copyWith(
                            fontSize: 18.h
                          ),),
                          SizedBox(
                            height: kHeight,
                          ),
              Text('Shop by Categories',  style: kAppTextTheme.bodyLarge?.copyWith(
                            fontSize: 12.h,
                            color: kDisabledButtonBackground
                          ),),
                           SizedBox(
                            height: kHeight,
                          ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(controller.response["category"]!.length,(index)=>
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 75.w,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(controller.response["category"]?[index]["image"]??''),
                          ),
                          SizedBox(
                            height: kHeight*1.5,
                          ),
                          Text(controller.response["category"]?[index]["title"]??'',
                          style: kAppTextTheme.bodyLarge?.copyWith(
                            fontSize: 12.h
                          ),
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),  
            SizedBox(
                height: kHeight*2,
              ),
              Text('Jewellery World',  style: kAppTextTheme.bodyLarge?.copyWith(
                            fontSize: 18.h
                          ),),
                          SizedBox(
                            height: kHeight,
                          ),
              Text('A companion for every occasion',  style: kAppTextTheme.bodyLarge?.copyWith(
                            fontSize: 12.h,
                            color: kDisabledButtonBackground
                          ),),
                           SizedBox(
                            height: kHeight*2,
                          ),
                          StaggeredGrid.count(
                            crossAxisCount: 4,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            children: [
                              ...List.generate(controller.response['arrivals']!.length, (ind)=>
                              StaggeredGridTile.count(
      crossAxisCellCount: int.parse(controller.response['arrivals']?[ind]['crossAxisCount']??''),
      mainAxisCellCount: int.parse(controller.response['arrivals']?[ind]['mainAxisCount']??''),
      child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(controller.response['arrivals']?[ind]['image']??'',),fit: BoxFit.cover)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:14.0,),
        child:controller.response['arrivals']?[ind]['category']!=''?Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Text(controller.response['arrivals']?[ind]['category']??'',style: kAppTextTheme.titleLarge?.copyWith(
                color: kWhite,
                fontSize: 14.h,
                fontWeight: FontWeight.w600
              ),),
            ),
          ],
        ): Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(controller.response['arrivals']?[ind]['title']??'',style: kAppTextTheme.titleLarge?.copyWith(
              color: kWhite,
              fontSize: 22.h,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(
              height: kHeight,
            ),
            Text(controller.response['arrivals']?[ind]['subTitle']??'',style: kAppTextTheme.titleLarge?.copyWith(
              color: kWhite,
              fontSize: 12.h,
              fontWeight: FontWeight.w400
            ),),
          ],
        ),
      ),
      ),
    ),),
                            ],
                          ),
                          Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.0,vertical: kHeight*2),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child:Text("Recommended \nProducts",textAlign: TextAlign.start,style: kAppTextTheme.bodyLarge?.copyWith(
                            fontSize: 18.h
                          ),) ),
                        TextButton(onPressed: (){}, child: Text("View All",textAlign: TextAlign.center,style: kAppTextTheme.bodyLarge?.copyWith(color: kPrimaryButtonBackground,fontSize: 14,fontWeight: FontWeight.w500),))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ResponsiveGridRow(
                       
                        children: List.generate(controller.response['recommendedProducts']!.length, (ind)=> ResponsiveGridCol(
                          xl: 6,
                          lg: 6,
                          md: 6,
                          xs: 6,
                          sm: 6,
                          child: ProductWidget(
                            productImage: controller.response['recommendedProducts']?[ind]["image"]??"",
                            productName: controller.response['recommendedProducts']?[ind]["productName"]??"",
                            offerprice: controller.response['recommendedProducts']?[ind]["price"]??"",
                            weight: controller.response['recommendedProducts']?[ind]["weight"]??"",
                          ),
                        ))
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    ));
  }
}