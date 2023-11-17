import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ListItems1 extends StatelessWidget {
  const ListItems1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 20.h,
      color: Color(0xffffffff),
      margin: EdgeInsets.only(top: 21.h,right: 30.w),
      child: Column(
        children: [
          InkWell(
            child: Text("Login",style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color:const Color(0xff546678),
            ),),
            onTap: (){},
          ),
          Padding(
            padding:  EdgeInsets.only(top: 12.h),
            child: InkWell(
              child: Text("Signup",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color:const Color(0xff546678),
              ),),
              onTap: (){},
            ),
          )
        ],
      ),
    );
  }
}

class ListItems2 extends StatefulWidget {
  const ListItems2({super.key});

  @override
  State<ListItems2> createState() => _ListItems2State();
}

class _ListItems2State extends State<ListItems2> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 65.h,
      width: 146.w,
      color: Color(0xffffffff),
      margin: EdgeInsets.only(top: 21.h,right: 30.w),
      child: Column(
        children: [
          InkWell(
            child: Text("Become a Seller",style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color:const Color(0xff546678),
            ),
            ),
            onTap: (){},
          ),
          Padding(
            padding:  EdgeInsets.only(top: 12.h),
            child: InkWell(
              child: Text("Become a Agent",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color:const Color(0xff546678),
              ),),
              onTap: (){},
            ),
          )
        ],
      ),
    );
  }
}

