import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../timer_countdown.dart';
import 'hot_delas_products.dart';

class HotdealsFeathers extends StatelessWidget {
  const HotdealsFeathers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 0.h),
      height: 383.h,
      width: 360.w,
      color: const Color(0xFFFFFFFF),
      // color: Colors.red,
      child: Padding(
        padding:  EdgeInsets.only(top: 9.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
              // margin: EdgeInsets.only(),
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20.h,
                    width: 66.w,
                    margin: EdgeInsets.only(top: 3.h,left: 12.w),
                    child: Text("Hot Deals",style: TextStyle(
                      color:const Color(0xFF546678),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                  const TimerCountDown(),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h,right: 12.w ),
                    child: Text("View more",style: TextStyle(
                        color: const Color(0xFFFF8800),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp

                    ),),
                  ),
                ],
              ),
            ),
            const HotDealsProduct()

          ],
        ),
      ),
    );
  }
}





///widgets\\\\\\\\\\






