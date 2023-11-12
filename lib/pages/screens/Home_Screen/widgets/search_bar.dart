import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(6.w, 20.h,6.w , 8.h),
      decoration: BoxDecoration(
         color:  Color(0xFFFFFFFF),
        // color: Colors.red,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 34.h,
      width: 184.w,
      child: SearchBar(
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/icon/searchbpplogo.png",height: 25.65.h,width: 18.w,),
        ),
      ),
    );
  }
}