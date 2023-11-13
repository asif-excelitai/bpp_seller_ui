import 'package:bpp_seller_ans/pages/screens/Home_Screen/homescreen.dart';
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
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  Homepage(),
        );
      },

    );
  }
}
