import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(12.w, 20.h, 12.w, 8.h),
      color: Color(0xFFFFFFFF),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.h,right: 24.w,bottom: 5.h),
            child: InkWell(
              onTap: (){
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Container(
                height: 24.h,
                width: 24.w,
                child: Image.asset("assets/icon/appbar/drawer.png",width: 24.w,height: 24.h,),
              ),
            ),
          ),
          Container(
            width: 184.w,
            height: 34.h,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Color(0xffD9D9D9)
              )
            ),

            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(8.w,8.h,8.w,8.h),
                  height: 18.h,
                  width: 18.w,
                  child: Image.asset("assets/icon/appbar/bpp_search_logo.png"),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 10.h,bottom: 9.h,left: 8.w),
                  child: Container(
                    height: 15.h,
                    width: 112.w,
                   child: Text("Search in BPP Shop",style: TextStyle(
                     color: Color(0xFFCACACA),
                     fontSize:12.sp,
                     fontWeight: FontWeight.w400,
                   ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: .3.w),
                  child: Container(
                    // margin: EdgeInsets.only(right: 0.w),
                    width:27.8.w,
                    height: 34.h,
                    // color: Color(0xFFFF8800),
                    decoration: BoxDecoration(
                        color: Color(0xFFFF8800),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      )
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 8.h,bottom: 8.h,right: 1.w),
                      child: Image.asset("assets/icon/appbar/SearchIcon.png",height: 18.h,width: 18.w,color:const Color(0xffFFFFFF),),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 4.h,left: 25.w,bottom: 4.h),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 1.h,bottom: 3.h,right: 3.w,),
                  child: InkWell(
                    child: Image.asset("assets/icon/appbar/agent.png",width: 27.w,height: 26.h,),
                    onTap: (){
                    },
                  )

                  // Image.asset("assets/icon/user.png",) assets/icon/agent.png

                  ,),
                Container(
                    margin: EdgeInsets.only(right: 4.w,left: 15.w),
                    child: InkWell(
                      child: Image.asset("assets/icon/appbar/user.png",width: 24.w,height: 24.h,),
                      onTap: (){
                      },
                    )
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}