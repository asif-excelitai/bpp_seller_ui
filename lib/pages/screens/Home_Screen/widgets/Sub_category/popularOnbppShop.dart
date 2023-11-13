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
    return Padding(
      padding: EdgeInsets.only(top: 24.h,right: 2.w,),
      child: Container(
        height: 161.h,
        width: 334.w,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 193.w),
              child:
              Text("Popular on BPP Shop",style: bppTextStyle.dealsCategory,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h,left: 2.w),
              child: Container(
                  height: 136.h,
                  width: 332.w,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 2.w),
                        height: 66.h,
                        child:GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 6,
                                crossAxisSpacing: 4.w,
                                mainAxisSpacing: 4.w
                            ),
                            itemCount: popularItemlist1.length,
                            itemBuilder: (BuildContext context ,int index){
                              return Container(
                                height: 66.h,
                                width: 52.w,
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Image.asset('${popularItemlist1[index].image}',height: 30.h,width: 30.w,),
                                      Text(popularItemlist1[index].name as String,style: TextStyle(
                                          fontSize: 10.sp
                                      ),),
                                    ],
                                  ),
                                ),
                              );
                            }
                        ) ,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4.h,left: 2.w),
                        height: 66.h,
                        color: Colors.white,
                        child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 6,
                                crossAxisSpacing: 4.w,
                                mainAxisSpacing: 4.w
                            ),
                            itemCount: 6,
                            itemBuilder: (BuildContext context ,int index){
                              return Container(
                                height: 66.h,
                                width: 52.w,
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Image.asset('${popularItemlist2[index].image}',height: 30.h,width: 30.w,),
                                      Text(popularItemlist2[index].name as String,style: TextStyle(
                                          fontSize: 10.sp
                                      ),),
                                    ],
                                  ),
                                ),
                              );
                            }
                        ) ,
                      )
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}