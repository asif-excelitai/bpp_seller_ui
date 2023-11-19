import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgentUser extends StatelessWidget {
  const AgentUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h,right: 3.w),
      child: Row(
        children: [
          Image.asset("assets/icon/agent.png",height: 27.h,width: 27.h,color: const Color(0xFF8A8A8A)),
          Padding(
            padding:  EdgeInsets.only(left: 19.w),
            child: InkWell(
              child: Image.asset("assets/icon/user.png",width: 24.w,height: 24.h,),
            ),
          ),
        ],
      ),
    );
  }
}