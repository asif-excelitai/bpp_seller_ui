// import 'package:flutter/material.dart';
// class STextTheme{
//   STextTheme._();
//
//   static TextTheme lightTextTheme=TextTheme(
//     headlineLarge: TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold,color: Colors.black),
//     headlineMedium: TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600,color: Colors.black),
//     headlineSmall: TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600,color: Colors.black),
//
//
//     titleLarge: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.black),
//     titleMedium: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.black),
//     titleSmall: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400,color: Colors.black),
//
//     bodyLarge: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.black),
//     bodyMedium: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal,color: Colors.black),
//     bodySmall: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.black.withOpacity(.5)),
//
//     labelLarge: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.black),
//     labelMedium: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.black.withOpacity(.5)),
//
//
//
//   );
//   static TextTheme darkTextTheme=TextTheme(
//     headlineLarge: TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold,color: Colors.white),
//     headlineMedium: TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600,color: Colors.white),
//     headlineSmall: TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600,color: Colors.white),
//
//     titleLarge: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.white),
//     titleMedium: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.white),
//     titleSmall: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400,color: Colors.white),
//
//     bodyLarge: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.white),
//     bodyMedium: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal,color: Colors.white),
//     bodySmall: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.white.withOpacity(.5)),
//
//     labelLarge: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.white),
//     labelMedium: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal,color: Colors.white.withOpacity(.5)),
//   );
//
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bppTextStyle{
  static const defaultTextStyle=TextStyle(
  color: Color(0xffFFF1F1),
    fontStyle: FontStyle.normal,
     fontSize:16,
     fontWeight: FontWeight.w500,
  //     font-family: Inter,


  );

  static const defaultblackColor=TextStyle(
    color:Color(0xff000000),
    fontWeight: FontWeight.w600,
    fontSize: 50,
    fontStyle: FontStyle.normal,

  );

  static const subcategoryTextcolor=TextStyle(
    color: Color(0xff546678),
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const timerdivtextColor=TextStyle(

    color: Color(0xffff8800),
    fontSize: 8.216,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.416,

  );
  static const subcatergorysmallTextColor=TextStyle(
    color:Color(0xffff8800),
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,

  );

  static const addcartTextColor=TextStyle();
}

