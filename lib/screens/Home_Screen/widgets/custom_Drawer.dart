import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top: 92.h),
      child: Container(
        width: 255.w,
        height: 866.h,
        color: Colors.blueAccent,
        child: ListView(

        ),
      ),
    );
  }
}
