import 'package:bpp_seller_ans/screens/Home_Screen/widgets/Sub_category/discount_banner.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/Sub_category/discount_banner_large.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/Sub_category/popularOnbppShop.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/add_to_cart_button.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/best_selling_full_page.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/customAppbar.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/custom_Drawer.dart';
import 'package:bpp_seller_ans/screens/Home_Screen/widgets/tab_view_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Model/hot_deals_product.dart';
import 'widgets/carousal_slider.dart';
import 'widgets/hot_deals/hot_deals_featcher.dart';


class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  // final  List<Widget> _pages =[
  //   // Your pages go here
  //   Profile(),
  //   OrderList(),
  //    AddtoCart(),
  // ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set status bar color to transparent
    ));
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor:const Color(0xFFF4F4F4),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 62.h,
        backgroundColor: const Color(0xFFFFFFFF),
        actions: [
           CustomAppbar(scaffoldKey: _scaffoldKey),
        ],
      ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only( top: 16.h,right: 12.w,left: 12.w),
              child:const  Column(
                children: [
                  HomepageCarousalSlider(),
                  PopularOnBppShop()
                ],
              ),
            ),
           const   HotdealsFeathers(),
          const  DiscountBanner(),
           const TabPages(),
          const DiscountBannerLarge(),
           const BestSellingFullpage(),
            const DiscountBannerLarge(),
      SizedBox(
        // height: 664.h,
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.only(left: 12.w,right: 289.w),
                child: Text("All Yours",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color:const Color(0xFF546678)),),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h,left: 12.w),
                // height: 322.h, //creates a problem of height ,not use it
                color: const Color(0xFFFFFFFF),
                child:GridView.builder(
                    // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing:12.w,
                        mainAxisSpacing:12.w,
                        mainAxisExtent: 315.w,
                        childAspectRatio:322/162
                    ),
                    itemCount: hotDealsList.length,
                    itemBuilder: (BuildContext context,int index){
                      return Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:Radius.circular(10)), // adds rounded corners
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top:4.h ,left: 4.w,right: 4.w),
                              child: Image.asset('${hotDealsList[index].productImageurl}',height:154.h,width: 154.w),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:6.h,right: 7.w,left: 1.w),
                              child: Text("${hotDealsList[index].productName}",overflow: TextOverflow.fade,style: TextStyle(
                                  color: const Color(0xFF333333),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp
                              ),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.h,left: 50.w,right: 53.w),
                              child: Text("${hotDealsList[index].unit}" ":""Pair",style:TextStyle(
                                color: const Color(0xFF333333),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ) , ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4.81.h,left:41.w,right:54.w  ),
                              //  width:67.w,
                              // height: 17.h,
                              child: RichText(text:TextSpan(
                                  children: <TextSpan>[

                                    TextSpan(
                                        text: '${hotDealsList[index].productDiscountprice}' '৳ ',style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFF333333),
                                    )
                                    ),

                                    TextSpan(text: '${hotDealsList[index].productPrice}' '৳',style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFFFF8800),
                                      // decorationThickness:
                                      decoration: TextDecoration.lineThrough,
                                    ),)


                                  ]
                              ),


                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1.h,left: 30.w),
                              child: Row(
                                children: [
                                  SizedBox(

                                    // margin: EdgeInsets.only(top: 10.h,left: 30.w),
                                    height: 12.h,width:76.w,
                                    child: RatingBar.builder(
                                      initialRating: hotDealsList[index].productRating as double,
                                      minRating: 1,
                                      tapOnlyMode: true,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 15.w,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: .1),
                                      itemBuilder: (context,_)=>const Icon(Icons.star,color:Color(0xffFDC040) ,),

                                      onRatingUpdate: (rating){},

                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 2.w,top: 2.h),
                                    height: 15.h,
                                    child: Text("(""${hotDealsList[index].ratingCount}"")",style: TextStyle(
                                      color: const Color(0xFF333333),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                  )
                                ],
                              ),
                            ),
                            const AddToCartButton()

                          ],
                        ),
                      );
                    })


              )
            ],
          )
      )

          ],
        ),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: Container(
        height: 58.99997,
        width: 360.w,
        // width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.red,
          boxShadow: [BoxShadow(color: Colors.transparent)],
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            // log("=========tapped on  $index");
            setState(() {
              _currentIndex= index;
            });
          },

          currentIndex: _currentIndex,

          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: const Color(0xffFF8800),
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset("assets/icon/bottom_nav_bar/home.png",height: 24.h,width: 24.w,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icon/bottom_nav_bar/profile.png",height: 24.h,width: 24.w,color:const Color(0xffFF8800) ,),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icon/bottom_nav_bar/Orderlist.png",height: 24.h,width: 24.w,color: const Color(0xffFF8800),),
              label: 'Order List',

            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icon/bottom_nav_bar/Cart.png",height: 24.h,width: 24.w,color: const Color(0xffFF8800),),
              label: 'Cart',


            ),
          ],
        ),
      ),
    );
  }


}
















