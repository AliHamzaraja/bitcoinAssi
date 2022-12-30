import 'package:bitcoin_flutter/Screens/Notification.dart';
import 'package:bitcoin_flutter/Widgets/notification_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class topbarNicon extends StatelessWidget {
  String txt;
  topbarNicon({required this.txt,});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 27.h, left: 18.w),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 18.h,
                width: 18.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff265955),
                ),
                child: Icon(Icons.arrow_back, color: Colors.white, size: 15.sp,),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.only(left: 21.w, right: 21.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(txt, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),),
             InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),)),
              
              child: notificationIcon()),
            ],),
          ),
        ],
      );
  }
}