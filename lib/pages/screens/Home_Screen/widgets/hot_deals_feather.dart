import 'package:bpp_seller_ans/pages/screens/Home_Screen/widgets/timer_countdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      color: Color(0xFFFFFFFF),
      // color: Colors.red,
      child: Padding(
        padding:  EdgeInsets.only(top: 9.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20.h,
              margin: EdgeInsets.only(),
              color: Colors.red,
              child: Row(
                children: [
                  Container(
                    height: 17.h,
                    width: 66.w,
                    margin: EdgeInsets.only(top: 3.h,left: 12.w),
                    child: Text("Hot Deals",style: TextStyle(
                      color:Color(0xFF546678),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                  const TimerCountDown(),
                  Padding(
                    padding: EdgeInsets.only(left:63.w,top: 5.h ),
                    child: Container(
                      height: 15.h,
                      width: 60.w,
                      child: Text("View more",style: TextStyle(
                          color: Color(0xFFFF8800),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp

                      ),),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}