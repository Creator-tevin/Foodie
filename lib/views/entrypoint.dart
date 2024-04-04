import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodie/constants/constants.dart';
import 'package:get/get.dart';
import 'package:foodie/views/home/home_page.dart';
import 'package:foodie/views/cart/cart_page.dart';
import 'package:foodie/views/search/search_page.dart';
import 'package:foodie/views/profile/profile_page.dart';
import 'package:foodie/controllers/tab_index_controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:badges/badges.dart' as badges;

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pageList[controller.tabIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: CurvedNavigationBar(
                    color: kPrimary,
                    backgroundColor: Colors.white,
                    buttonBackgroundColor: Colors.transparent,
                    onTap: (value) {
                      controller.setTabIndex = value;
                    },
                    height: 50,
                    animationDuration: Duration(milliseconds: 200),
                    animationCurve: Curves.easeInOut,
                    index: controller.tabIndex,
                    items: [
                      _buildIcon(controller, AntDesign.appstore1,
                          AntDesign.appstore_o, 'Home', 0),
                      _buildIcon(
                          controller, Icons.search, Icons.search, 'Search', 1),
                      _buildCartIcon(
                          controller, FontAwesome.opencart, 'Cart', 2),
                      _buildIcon(controller, FontAwesome.user_circle,
                          FontAwesome.user_circle_o, 'Profile', 3),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

Widget _buildIcon(TabIndexController controller, IconData selectedIcon,
    IconData unselectedIcon, String tooltip, int index) {
  return Icon(
    controller.tabIndex == index ? selectedIcon : unselectedIcon,
    color: controller.tabIndex == index ? kSecondary : Colors.black38,
    size: 20,
    semanticLabel: tooltip,
  );
}

Widget _buildCartIcon(
    TabIndexController controller, IconData icon, String tooltip, int index) {
  return badges.Badge(
    badgeContent: Text('1'),
    child: Icon(
      icon,
      color: controller.tabIndex == index ? kSecondary : Colors.black38,
      size: 20,
      semanticLabel: tooltip,
    ),
  );
}
