import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_countdown/slide_countdown.dart';

class TimerCountDown extends StatelessWidget {
  const TimerCountDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black12,
      // margin: EdgeInsets.only(left: 50.5.w,right: 61.5.w),
      width: 99.w,
      height: 30.h,
      child: SlideCountdownSeparated(
        separatorStyle:TextStyle(
          color:Color(0xFFFF8800),
        ) ,
        duration: Duration(
          seconds: 50,
          minutes: 10,
          hours: 1,
        ),
        decoration: BoxDecoration(
            color: Colors.orangeAccent
        ),
        textStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
          color: Color(0xffffffff),
          // color: Colors.blue,
        ),
      ),

    );
  }
}