import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.99.h),
      height:48.h,
      width: 162.w,
      color:Color(0xFFD9D9D9),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFFF8800),
          ),
          margin: EdgeInsets.only(top:8.h,bottom: 8.h ,left: 13.w,right: 13.w),
          height: 32.h,
          width: 136.w,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left:16.w,top:6.h,bottom:8.h  ),
                child: Image.asset("assets/icon/cart/shopping-cart.png",height:18.h,width: 18.w,),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.w,top: 7.h,bottom: 8.h),
                child: Text("Add to Cart",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color:Color(0xFFFFFFFF)
                ),),
              )
            ],
          ),

        ),
      ),
    );
  }
}