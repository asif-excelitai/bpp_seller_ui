

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../../Model/homepage_caro_slider_model.dart';

class HomepageCarousalSlider extends StatefulWidget {
  const HomepageCarousalSlider({super.key});

  @override
  State<HomepageCarousalSlider> createState() => _HomepageCarousalSliderState();
}

class _HomepageCarousalSliderState extends State<HomepageCarousalSlider> {
  // late CarouselController _controller;
  int currentIndex=0;
  @override
  // void intState(){
  //   _controller=CarouselController();
  //   super.initState();
  // }
  //
  // @override

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 336.w,
          height: 124.h,
          child: CarouselSlider.builder(
            itemCount: homeSliderList.length,
            itemBuilder: (BuildContext context, int itemIndex, int pageviewIndex) {
              return
                // Image("${homeSliderList[itemIndex].sliderImage}");
                Container(
                  // margin: EdgeInsets.only(left: 5.w,right: 5.w),
                  clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:
                    // Text("hello"),
                    Image.asset("${homeSliderList[itemIndex].sliderImage}",fit: BoxFit.fill,)
                );
            },
            options: CarouselOptions(
               onPageChanged: (index, reason) => setState((){currentIndex=index;}),

                autoPlay: true,
                initialPage: 0,
                aspectRatio: 1,
                enlargeCenterPage: true,
                autoPlayAnimationDuration: Duration(milliseconds: 500),
                viewportFraction: 2),
          ),

        ),
        Positioned(
          bottom: 10.0.h,
          left: 201.0.w,
          right: 12.w,
          top: 102.h,
          child: Container(
            height: 10.h,
            width: 106.w,
            child: DotsIndicator(
              dotsCount: homeSliderList.length,
              position: currentIndex,
              decorator: DotsDecorator(
                  size:  Size(20.0.w, 2.0.h),
                  activeSize: Size(20.0.w, 2.0.h),
                  color: const Color(0xff828282),
                  activeColor: Colors.red,

                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
              ),
            ),
          ),
        )
      ],
    );

  }
}
