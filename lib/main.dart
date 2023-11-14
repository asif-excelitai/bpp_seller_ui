import 'package:bpp_seller_ans/screens/Home_Screen/homescreen.dart';
import 'package:bpp_seller_ans/screens/Order_list/order_list.dart';
import 'package:bpp_seller_ans/screens/Profile_screen/profile_screen.dart';
import 'package:bpp_seller_ans/screens/cart_screen/Add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360 ,800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          // home:  Homepage(),
          initialRoute: '/',
          routes: {
            '/': (context)=> Homepage(),
            '/second':(context)=>  Profile(),
            '/third':(context)=>  OrderList(),
            '/fourth':(context)=>  AddtoCart(),
          },
        );
      },

    );
  }
}
