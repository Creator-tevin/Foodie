import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/views/entrypoint.dart';
import 'package:get/get.dart';
import 'package:foodie/constants/constants.dart';


Widget defaultHome = MainScreen();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Foodie',
          theme: ThemeData(
              scaffoldBackgroundColor: kOffWhite, // Assuming KOWhite is Colors.white
              iconTheme: const IconThemeData(color: Colors.black), // Assuming KDark is Colors.black
              primarySwatch: Colors.grey),
          home: defaultHome,
        );
      },
    );
  }
}
