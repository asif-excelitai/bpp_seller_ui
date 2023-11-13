import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../Model/imageis_list_model.dart';

class HomepageCarousalSlider extends StatelessWidget {
  const HomepageCarousalSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 336.w,
        height: 124.h,
        child: CarouselSlider.builder(
            itemCount: homeSliderList.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageviewIndex) {
              return
                // Image("${homeSliderList[itemIndex].sliderImage}");
                Container(
                    // margin: EdgeInsets.only(left: 5.w,right: 5.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("${homeSliderList[itemIndex].sliderImage}",fit: BoxFit.fill,)
                );
            },
            options: CarouselOptions(
                autoPlay: true,
                initialPage: 0,
                aspectRatio: 1,
                enlargeCenterPage: true,
                autoPlayAnimationDuration: Duration(milliseconds: 500),
                viewportFraction: 2))

    );
  }
}
