import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/common/app_style.dart';
import 'package:foodie/common/back_ground_container.dart';
import 'package:foodie/common/reusable_text.dart';
import 'package:foodie/constants/constants.dart';
import 'package:foodie/constants/uidata.dart';
import 'package:foodie/views/home/widget/restaurant_tile.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kSecondary,

        title: ReusableText(text: "All Nearby Restaurant",
            style: appStyle(13,kLightWhite, FontWeight.w600)),
      ),
      body: BackGroundContainer(
        color: Colors.white,
          child: Padding(
            padding:  EdgeInsets.all(12.w),
            child: ListView(
                children: List.generate(restaurants.length, (i) {
                var restaurant = restaurants[i];
                return RestaurantTile(restaurant: restaurant,);

                }),
            ),
          ),),
    );
  }
}
