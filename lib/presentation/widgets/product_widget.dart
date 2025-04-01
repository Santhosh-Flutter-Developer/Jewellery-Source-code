import 'package:flutter/material.dart';
import 'package:jewellery_source_code/core/constants/app_styles.dart';

class ProductWidget extends StatelessWidget {
  final String? productImage;
  final String? productName;
  final String? offerprice;
  final String? weight;
  final List? otherImages;
  const ProductWidget({super.key,this.offerprice,this.otherImages,this.productImage,this.productName,this.weight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0,bottom: 10.0),
      child: InkWell(
        onTap: (){
        
        },
        child: SizedBox(
          width: 150,
          height: 250,      
          child: Card(
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  // width: 150,
                  decoration: BoxDecoration(
                    
                    borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      
                    ),
                    image: DecorationImage(image: NetworkImage(productImage??"",),fit: BoxFit.cover)
        
                  ),
                 
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                  child: Text(productName??"",maxLines: 2,overflow: TextOverflow.ellipsis,style: kAppTextTheme.bodyLarge?.copyWith(fontSize: 12,),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                                      children: [
                                     
                                        Text('Weight: ($weight)',style: kAppTextTheme.bodyLarge?.copyWith(
                                      fontSize: 12,
                                      
                                      color: Colors.grey
                                    ),),
                                      ],
                                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                  child: Text(offerprice??"",maxLines: 2,overflow: TextOverflow.ellipsis,style: kAppTextTheme.bodyLarge?.copyWith(fontSize: 12,fontWeight: FontWeight.w600),),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}