import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bpp_seller_ans/utils/constant/text_property.dart';

import '../../../../../Model/popular_products_model_image.dart';

class PopularOnBppShop extends StatelessWidget {
  const PopularOnBppShop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161.h,
      width: 334.w,
      margin:EdgeInsets.only(top: 24.h,right: 2.w,),
      // color: Colors.teal,
      color: const Color(0xFFF4F4F4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 17.h,
              child: Text("Popular on BPP Shop",style: bppTextStyle.dealsCategory,)),
          Container(
            margin:EdgeInsets.only(top: 8.h,left: 2.w),
              height: 136.h,
              width: 332.w,
              color: const Color(0xFFF4F4F4),
              child: SizedBox(
                height: 136.h,
                child:GridView.builder(
                  scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                        crossAxisCount: 2,
                        crossAxisSpacing: 4.h,
                        mainAxisSpacing: 4.w,
                      childAspectRatio: 66/52,
                    ),
                    itemCount: popularItemlist1.length,
                    itemBuilder: (BuildContext context ,int index){
                      return Container(
                        padding: EdgeInsets.only(top: 4.h,left: 11.w,right: 11.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFF4F4F4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('${popularItemlist1[index].image}',height: 30.h,width: 30.w,),
                            Expanded(
                              child: Center(
                                child: Text(popularItemlist1[index].name as String,overflow: TextOverflow.fade,style: TextStyle(
                                    fontSize: 10.sp
                                ),),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                ) ,
              )
          )
        ],
      ),
    );
  }
}