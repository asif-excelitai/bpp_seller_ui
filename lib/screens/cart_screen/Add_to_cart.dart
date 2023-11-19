import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddtoCart extends StatefulWidget {
  const AddtoCart({super.key});

  @override
  State<AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360.w,
        height: 780.h,
        color:Colors.amberAccent,
        child: const Center(child: Text("This is Cart Screen")),
    );
  }
}
