import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Model/hot_deals_product.dart';
import '../Home_Screen/widgets/add_to_cart_button.dart';


class ProductsDetailsItem extends StatelessWidget {
  final ProductType productType;
   ProductsDetailsItem({super.key, required this.productType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productType.productName as String),
      ),
      body: Padding(padding: EdgeInsets.only(left: 20.h,right: 10.w,top: 10.h),

      child:Container(
        width: 360.w,
        height: 700.h,
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:Radius.circular(10)), // adds rounded corners
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top:4.h ,left: 4.w,right: 4.w),
                child: Image.asset(productType.productImageurl as String , height: 154.h,width: 154.w,),
              ),
              Padding(
                padding: EdgeInsets.only(top:6.h,left: 30.w),
                child: Text(productType.productName as String,overflow: TextOverflow.fade,style: TextStyle(
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.h,left: 50.w,right: 53.w),
                child: Text("${productType.unit}" ":""Pair",style:TextStyle(
                  color: const Color(0xFF333333),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ) ,
                ),

              ),
              Container(
                margin: EdgeInsets.only(top: 4.81.h,left:41.w,right:54.w  ),
                //  width:67.w,
                // height: 17.h,
                child: RichText(text:TextSpan(
                    children: <TextSpan>[

                      TextSpan(
                          text: '${productType.productDiscountprice}' '৳ ',style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF333333),
                      )
                      ),

                      TextSpan(text: '${productType.productPrice}' '৳',style: TextStyle(
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
                        initialRating: productType.productRating as double,
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
                      child:
                      Text("(""${productType.ratingCount}"")",

                        style: TextStyle(
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
        ),
      ),

      ),
    );
  }
}
