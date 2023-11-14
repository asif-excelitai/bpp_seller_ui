import 'package:bpp_seller_ans/pages/screens/Home_Screen/widgets/Sub_category/popularOnbppShop.dart';
import 'package:bpp_seller_ans/pages/screens/Home_Screen/widgets/bottom_nav_bar.dart';
import 'package:bpp_seller_ans/pages/screens/Home_Screen/widgets/customAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/carousal_slider.dart';


class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set status bar color to transparent
    ));
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 62.h,
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
                  Column(
                    children: [
                      PopularOnBppShop(),
                      Container(
                        // margin: EdgeInsets.only(top: 0.h),
                        height: 383.h,
                        width: 360.w,
                        color: Colors.redAccent,
                        child: Padding(
                          padding:  EdgeInsets.only(top: 9.0.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                    Container(
                                      color: Colors.blue,
                                      height: 20.h,
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 3.h,right: 57.w),
                                            child: Text("Hot Deals",style: TextStyle(
                                              color:Color(0xFF546678),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                            )),
                                          ),
                                          Container(
                                            color: Colors.black12,
                                            width: 90.w,
                                            height: 20.h,

                                          )
                                        ],
                                      ),
                                    )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.red,
      ) ,
      bottomNavigationBar: customHeightNavBar(),
    );
  }


}




