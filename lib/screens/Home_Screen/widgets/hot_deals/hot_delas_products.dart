import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Model/hot_deals_product.dart';
import '../add_to_cart_button.dart';




class HotDealsProduct extends StatelessWidget {
  const HotDealsProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12.h,left: 12.w),
      height: 322.h,
      color: const Color(0xFFFFFFFF),
      child:GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              // crossAxisSpacing:12.w,
              mainAxisSpacing:12.w,
              childAspectRatio:322/162,
            // mainAxisExtent: 152.w,
            // crossAxisSpacing: 7.h
          ),
          itemCount: hotDealsList.length,
          itemBuilder: (BuildContext context,int index){
            return Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:Radius.circular(10)), // adds rounded corners
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top:4.h ,left: 4.w,right: 4.w),
                    child: Image.asset('${hotDealsList[index].productImageurl}',height:154.h,width: 154.w),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:6.h,right: 7.w,left: 1.w),
                    child: Text("${hotDealsList[index].productName}",overflow: TextOverflow.fade,style: TextStyle(
                        color: const Color(0xFF333333),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.h,left: 50.w,right: 53.w),
                    child: Text("${hotDealsList[index].unit}" ":""Pair",style:TextStyle(
                      color: const Color(0xFF333333),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ) , ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4.81.h,left:41.w,right:54.w  ),
                    //  width:67.w,
                    // height: 17.h,
                    child: RichText(text:TextSpan(
                        children: <TextSpan>[

                          TextSpan(
                              text: '${hotDealsList[index].productDiscountprice}' '৳ ',style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF333333),
                          )
                          ),

                          TextSpan(text: '${hotDealsList[index].productPrice}' '৳',style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFFF8800),
                            // decorationThickness:
                            decoration: TextDecoration.lineThrough,
                          ),)


                        ]
                    ),


                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h,left: 30.w),
                    child: Row(
                      children: [
                        SizedBox(

                          // margin: EdgeInsets.only(top: 10.h,left: 30.w),
                          height: 12.h,width:76.w,
                          child: RatingBar.builder(
                            initialRating: hotDealsList[index].productRating as double,
                            minRating: 1,
                            tapOnlyMode: true,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15.w,
                            itemPadding: const EdgeInsets.symmetric(horizontal: .1),
                            itemBuilder: (context,_)=>const Icon(Icons.star,color:Color(0xffFDC040) ,),

                            onRatingUpdate: (rating){},

                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 2.w,top: 2.h),
                          height: 15.h,
                          child: Text("(""${hotDealsList[index].ratingCount}"")",style: TextStyle(
                            color: const Color(0xFF333333),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:8.2.h),
                    child: const AddToCartButton(),
                  )

                ],
              ),
            );
          }) ,
    );
  }
}