import 'dart:developer';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/Sub_category/popularOnbppShop.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/customAppbar.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/custom_Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/carousal_slider.dart';
import 'widgets/hot_deals_feather.dart';


class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  // final  List<Widget> _pages =[
  //   // Your pages go here
  //   Profile(),
  //   OrderList(),
  //    AddtoCart(),
  // ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set status bar color to transparent
    ));
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor:Color(0xFFF4F4F4),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 62.h,
        backgroundColor: Color(0xFFFFFFFF),
        actions: [
           CustomAppbar(scaffoldKey: _scaffoldKey),
        ],
      ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only( top: 16.h,right: 12.w,left: 12.w),
              child: Column(
                children: [
                  HomepageCarousalSlider(),
                  PopularOnBppShop()
                ],
              ),
            ),
           const HotdealsFeathers(),

          ],
        ),
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar:
      // customHeightNavBar()
        ///
      Container(
        height: 58.99997,
        width: 360.w,
        // width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [BoxShadow(color: Colors.transparent)],
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            log("=========tapped on  $index");
            setState(() {
              _currentIndex= index;
            });
          },

          currentIndex: _currentIndex,

          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: Color(0xffFF8800),
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset("assets/icon/bottom_nav_bar/home.png",height: 24.h,width: 24.w,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icon/bottom_nav_bar/profile.png",height: 24.h,width: 24.w,color:Color(0xffFF8800) ,),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icon/bottom_nav_bar/Orderlist.png",height: 24.h,width: 24.w,color: Color(0xffFF8800),),
              label: 'Order List',

            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icon/bottom_nav_bar/Cart.png",height: 24.h,width: 24.w,color: Color(0xffFF8800),),
              label: 'Cart',


            ),
          ],
        ),
      ),
    );
  }


}








