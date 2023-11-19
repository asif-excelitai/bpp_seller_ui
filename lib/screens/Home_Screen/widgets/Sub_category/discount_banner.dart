import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12.h),
      height: 122.h,
      child:Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            margin: EdgeInsets.only(left: 12.w),
            // height: 80.h,width: 220.w,
            child: Image.asset("assets/images/discount_sale/discount sale 1.png",height: 80.h,width: 220.w,fit: BoxFit.fill,),
          ),
          Container(
            margin: EdgeInsets.only(top:18.h,left: 12.w ,bottom: 24.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset("assets/images/discount_sale/super discount.png",height: 80.h,width: 104.w,fit: BoxFit.fill),
          )
        ],
      ) ,
    );
  }
}