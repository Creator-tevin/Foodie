import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/common/custom_appbar.dart';
import 'package:foodie/common/custom_container.dart';
import 'package:foodie/common/heading.dart';
import 'package:foodie/constants/constants.dart';
import 'package:foodie/views/home/all_fastest_foods.dart';
import 'package:foodie/views/home/all_nearby_restaurants.dart';
import 'package:foodie/views/home/recommendation_page.dart';
import 'package:foodie/views/home/widget/category_list.dart';
import 'package:foodie/views/home/widget/food_list.dart';
import 'package:foodie/views/home/widget/nearby_restaurants_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: const CustomAppBar()),
      body: SafeArea(
        child: CustomContainer(containerContent:  Column(
          children: [
          const CategoryList(),
            Heading(
              text: "Nearby Restaurants",
              onTap: () {
                Get.to( () => const AllNearbyRestaurants (),
                transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
            const NearbyRestaurants(),
            Heading(
              text: "Try Something New",
              onTap: () {
                Get.to(() => const RecommendationsPage(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
           const FoodsList(),
            Heading(
              text: "Fastest food Closer",
              onTap: () {
                Get.to(() => const AllFastestFoods(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
            const FoodsList(),
          ],
        )),
      ),
    );
  }
}