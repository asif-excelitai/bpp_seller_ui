import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: 360.w,
        height: 800.h,
        color: Colors.lightBlueAccent,
        child: const Center(child: Text("This is OrderList Page")),

      )
    );
  }
}
