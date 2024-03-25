import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/constants/constants.dart';
 import 'package:foodie/common/app_style.dart';
 import 'package:foodie/common/reusable_text.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 22.r,
                      backgroundColor: kSecondary,
                      backgroundImage: const NetworkImage("https://www.mensjournal.com/.image/t_share/MTk2MTM2NTcwNDMxMjg0NzQx/man-taking-selfie.jpg"),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                      child: Column(
                        mainAxisAlignment:  MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText (text: "Deliver To", style: appStyle(13, kSecondary, FontWeight.w600)),
                          SizedBox(
                            width: width *0.60,
                            child: Text("51 St James st, Monte Bay Jamaica",
                              overflow: TextOverflow.ellipsis,
                                style: appStyle(11, kGrayLight, FontWeight.normal)),
                          ),

                        ],
                      ),
                    ),

                     Text(
                      getTimeofDay(),
                      style: const TextStyle(fontSize: 22),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  String getTimeofDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if(hour >= 0 && hour < 12 ){
      return ' ☀️ ';
    }else if (hour >= 12 && hour < 16 ) {
    return ' ⛅ ';
    }else{
      return ' 🌙 ';
    }
  }
}