import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/home_Screen/list_of_products_screen.dart';
import 'package:ttsfarmcare/view/home_Screen/product_view_screen.dart';

import '../order_history_page/order_history.dart';
import '../profile_screen/profile_screen.dart';
import '../view_cart_pages/view_cart_screen.dart';
import 'home_page.dart';

class ListBottomBar extends StatefulWidget {
  const ListBottomBar({super.key});

  @override
  State<ListBottomBar> createState() => _ListBottomBarState();
}

class _ListBottomBarState extends State<ListBottomBar> {

  List<IconData> iconlist = [
    Icons.home,
    CupertinoIcons.shopping_cart,
    Icons.history,
    CupertinoIcons.person_fill,
  ];

  List bottomtext = ['home', 'cart', 'history', 'profile'];

 int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavIndex == 1
          ? const ViewCartPage()
          : _bottomNavIndex == 2
              ? const OrderHistoryScreen()
              : _bottomNavIndex == 3
                  ? const ProfilePage()
                  : _bottomNavIndex == 0
                      ? ListOfProductScreen()
                      : const HomePage(),
                      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconlist.length & bottomtext.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.white : Colors.black;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SvgPicture.asset(image[index],
              // color: _bottomNavIndex == index ? Colors.white : Colors.black,
              // ),
              Icon(
                iconlist[index],
                color: color,
              ),
              const SizedBox(height: 2),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    bottomtext[index],
                    style: GoogleFonts.montserrat(color: color),
                  ))
            ],
          );
        },

        activeIndex: _bottomNavIndex,
        backgroundColor: Color(0xff289445),
        // activeColor: Colors.white,
        splashRadius: 0,
        leftCornerRadius: 32,
        rightCornerRadius: 0,
        gapWidth: 20,
        splashSpeedInMilliseconds: 0,
         onTap: (index) { // this has changed
          setState(() {
            _bottomNavIndex = index;
          });
          
        },
      ),
    );
  }
}