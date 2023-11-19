import 'package:bpp_seller_ans/screens/Home_Screen/widgets/tab_view_page/best_selling.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/tab_view_page/discount_products.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/tab_view_page/new_arrival.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabPages extends StatefulWidget {
  const TabPages({
    super.key,
  });

  @override
  State<TabPages> createState() => _TabPagesState();
}

class _TabPagesState extends State<TabPages> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 3, vsync: this);
    return SizedBox(
      width: 360.w,
      child: Column(
        children: [
          Container(
            // color: Colors.white10,
            height: 40.h,
                 decoration: const BoxDecoration(
                    color: Colors.white10,
                   borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                 ),
                 child: TabBar(
                   labelColor: const Color(0xFFA6A6A6),
                     indicatorColor: Colors.orangeAccent,
                     automaticIndicatorColorAdjustment: true,
                     indicatorSize: TabBarIndicatorSize.tab,
                     labelStyle: TextStyle(
                       color: const Color(0xFFA6A6A6),
                       fontSize: 14.sp,
                       fontWeight: FontWeight.w500
                     ),
                     indicator: const BoxDecoration(
                       color: Color(0xFFFF8800),
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(10),
                         topRight: Radius.circular(10),
                       ),

                     ),
                     controller: tabController,
                     tabs:const [
                   Tab(text: 'Best Selling',),
                   Tab(text: 'New Arrival',),
                   Tab(text: 'Discount Products',),

                 ]),
          ),
           Container(
              width: 360.h,
              height:381.w ,
             // height: MediaQuery.of(context).size.height - kToolbarHeight - kBottomNavigationBarHeight,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10)
             ),
              child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children:const [
                    BestSelling(),
                    Newarrival(),
                    DiscountProduct(),
              ]),
            ),
        ],
      ),
    );
  }
}


