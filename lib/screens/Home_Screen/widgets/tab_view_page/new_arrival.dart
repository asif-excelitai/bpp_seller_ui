import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../hot_deals/hot_delas_products.dart';

class Newarrival extends StatelessWidget {
  const Newarrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),color: Colors.white,

      ),
      child: Padding(
        padding: EdgeInsets.only(top: 12.h,right: 12.w),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text("View more",style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFF8800),
              ),),
            ),
            const HotDealsProduct(),
          ],
        ),
      ),
    );
  }
}
