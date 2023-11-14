import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customHeightNavBar() {
  return Container(
    height: 58.99997,
    width: 360.w,
    // width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.red,
      boxShadow: [BoxShadow(color: Colors.transparent)],
    ),
    child: BottomNavigationBar(
      // onTap: (){},
      elevation: 0,
      backgroundColor: Colors.transparent,
      selectedItemColor: Color(0xffFF8800),
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset("assets/icon/bottom_nav_bar/home.png",height: 24.h,width: 24.w,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icon/bottom_nav_bar/profile.png",height: 24.h,width: 24.w,),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icon/bottom_nav_bar/Orderlist.png",height: 24.h,width: 24.w,),
          label: 'Order List',

        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icon/bottom_nav_bar/Cart.png",height: 24.h,width: 24.w,),
          label: 'Cart',

        ),
      ],
    ),
  );
}