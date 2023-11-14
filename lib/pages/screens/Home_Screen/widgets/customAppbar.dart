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
      color: Colors.blueGrey,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.h,right: 24.w,bottom: 5.h),
            child: InkWell(
              onTap: (){
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Container(
                margin: EdgeInsets.only(top: 3.h,bottom: 3.h,right: 8.w),
                child: Image.asset("assets/icon/drawer.png",width: 18.w,height: 18.h,),
              ),
            ),
          ),
          Container(
            width: 184.w,
            height: 34.h,
            color: Colors.red,
          ),
          Padding(
            padding:  EdgeInsets.only(top: 4.h,left: 26.w,bottom: 4.h),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 1.h,bottom: 3.h,right: 3.w,),
                  child: InkWell(
                    child: Image.asset("assets/icon/agent.png",width: 27.w,height: 26.h,),
                    onTap: (){
                    },
                  )

                  // Image.asset("assets/icon/user.png",) assets/icon/agent.png

                  ,),
                Container(
                    margin: EdgeInsets.only(right: 4.w,left: 15.w),
                    child: InkWell(
                      child: Image.asset("assets/icon/user.png",width: 24.w,height: 24.h,),
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