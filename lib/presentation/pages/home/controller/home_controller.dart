import 'package:get/get.dart';
import 'package:jewellery_source_code/core/constants/app_images.dart';

class HomeController extends GetxController{

var response ={
  'banner':[
    {
      'url':'',
      'image':AppImages.icHomeBanner1,
    },
    {
      'url':'',
      'image':AppImages.icHomeBanner2,
    },
    {
      'url':'',
      'image':AppImages.icHomeBanner3,
    },
    {
      'url':'',
      'image':AppImages.icHomeBanner4,
    },
  ],
  'category':[
    {
      'url':'',
      'image':AppImages.icEarrings,
      'title':'Earrings',
    },
    {
      'url':'',
      'image':AppImages.icBangles,
      'title':'Bangles',
    },
    {
      'url':'',
      'image':AppImages.icBracelets,
      'title':'Bracelets',
    },
    {
      'url':'',
      'image':AppImages.icChains,
      'title':'Chains',
    },
    {
      'url':'',
      'image':AppImages.icFingerRings,
      'title':'Finger Rings',
    },
    {
      'url':'',
      'image':AppImages.icMangalsutra,
      'title':'Mangalsutra',
    },
    {
      'url':'',
      'image':AppImages.icPendants,
      'title':'Pendants',
    },
  ],
  'arrivals':[
    {
      'url':'',
      'image':AppImages.icNewArrivals,
      'title':'New Arrivals',
      'subTitle':'New Arrivals Dropping Daily, Monday through Friday. Explore the Latest Launches Now!',
      'crossAxisCount':'4',
      'mainAxisCount':'2',
      'category':'',
    },
    {
       'url':'',
      'image':AppImages.icNosepin,
      'title':'Finger Rings',
      'subTitle':'',
      'crossAxisCount':'2',
      'category':'Nosepin',
      'mainAxisCount':'2',
    },
    {
      'url':'',
      'image':AppImages.icKidsJewellery,
      'title':'Finger Rings',
      'subTitle':'',
      'crossAxisCount':'2',
      'category':'Kids Jewellery',
      'mainAxisCount':'2',
    },
  ],
  'recommendedProducts':[
    {
      "image":'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw54e6a0a7/images/hi-res/51D2D2PMMAAA00_1.jpg?sw=640&sh=640',
      // 'otherImage':[
      //   'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw113f6584/images/hi-res/51D2D2PMMAAA00_2.jpg?sw=640&sh=640',
      // ],
      'productName':'Charming Paisley Pendant',
      'price':'₹32 725',
      'weight':'2.961 g',

    },
    {
      "image":'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw2ea23022/images/hi-res/501151STTAGA02_1.jpg?sw=640&sh=640',
      'productName':'Contemporary Solitaire Look Diamond Stud Earrings for Daily Wear',
      // 'otherImage':[
      //   'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dwfe073a3b/images/hi-res/501151STTAGA02_2.jpg?sw=640&sh=640',
      // ],
      'price':'₹28 009',
       'weight':'1.465 g',
    },
    {
      "image":'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw25515378/images/hi-res/513017OCLAAA00_1.jpg?sw=640&sh=640',
      'productName':'Traditional Floral Gold Nath',
      // 'otherImage':[
        
      // ],
      'price':'₹72 837',
       'weight':'6.67 g',
    },
    {
      "image":'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw908fe0fa/images/hi-res/511920FCMAA00.jpg?sw=640&sh=640',
      'productName':'Glorious 22 Karat Yellow Gold Floral Ring',
      // 'otherImage':[
      //   'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw541a7431/images/hi-res/511920FCMAA00_1.jpg?sw=640&sh=640',
      //   'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw4ef0e264/images/hi-res/511920FCMAA00_2.jpg?sw=640&sh=640',
      //   'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw7f2773af/images/hi-res/511920FCMAA00_3.jpg?sw=640&sh=640',
      // ],
      'price':'₹18 217',
       'weight':'1.675 g',
    },
  ]
};

  @override
  void onInit() {
    super.onInit();
  }
}