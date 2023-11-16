import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountBannerLarge extends StatelessWidget {
  const DiscountBannerLarge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h,bottom: 24.h,left: 12.w,right: 12.w),
      child: Image.asset("assets/images/discount_sale/discountbanner.png",width: 336.w,height: 116.h,),
    );
  }
}