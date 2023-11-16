import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'hot_deals/hot_delas_products.dart';

class BestSellingFullpage extends StatefulWidget {
  const BestSellingFullpage({super.key});

  @override
  State<BestSellingFullpage> createState() => _BestSellingFullpageState();
}

class _BestSellingFullpageState extends State<BestSellingFullpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),color: Colors.white,

      ),
      child: Padding(
        padding: EdgeInsets.only(top: 12.h,right: 12.w,),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.w,bottom: 8.h),
              child: Row(
                children: [
                  Text("Best Selling",style: TextStyle(
                      fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xFF546678),
                  ),),
                  Padding(
                    padding: EdgeInsets.only(left:197.w,top: 2.h),
                    child: Text("View more",style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFF8800),
                    ),),
                  ),
                ],
              ),
            ),
            const HotDealsProduct(),
          ],
        ),
      ),
    );
  }
}



