import 'package:bpp_seller_ans/pages/screens/Home_Screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 62.h,
        backgroundColor: Color(0xffFFFFFF),
        title: CustomSearchBar(),
        leading: Padding(
          padding:  EdgeInsets.only(top:25.h,left: 12.w,bottom: 13.h),
          child: InkWell(
              child: Image.asset("assets/icon/drawer.png",width: 18.w,height: 18.h,),
          onTap: (){

          },
          ),
        ),
        actions: [
          Image.asset("assets/icon/agent.png",height: 27.h,width: 27.h,color: Color(0xFF8A8A8A)),
          Image.asset("assets/icon/user.png",width: 24.w,height: 24.h,),
        ],
      ),
      //
      // drawer: Drawer(
      //   backgroundColor: Color(0xffFFFFFF),
      // ),
      body: Container(),
      drawer: Drawer(
        backgroundColor: Color(0xffFFFFFF),


      ),
    );
  }
}




