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

      body:Column(
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
                      height: 313.h,
                      color: Colors.redAccent,
                    )
                  ],
                )
              ],
            ),
          ),

        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.red,
      ) ,
      bottomNavigationBar: customHeightNavBar(),
    );
  }


}




