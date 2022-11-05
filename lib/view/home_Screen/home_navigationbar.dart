import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/home_Screen/home_page.dart';
import 'package:ttsfarmcare/view/order_history_page/order_history.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';
import 'package:ttsfarmcare/view/view_cart_pages/view_cart_screen.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class HomeNavigationBar extends StatefulWidget {
  int index;
 HomeNavigationBar({super.key, this.index=0});

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  List image = [
    "assets/icons/home.svg",
    "assets/icons/shop.svg",
    "assets/icons/history.svg",
    "assets/icons/profile.svg",
  ];

  List<IconData> iconlist = [
    Icons.home,
    CupertinoIcons.shopping_cart,
    Icons.history,
    CupertinoIcons.person_fill,
  ];

  List bottomtext = ['home', 'cart', 'history', 'profile'];

  int _bottomNavIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bottomNavIndex = widget.index;
  }

  

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
                      ? HomePage()
                      : const HomePage(),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconlist.length & bottomtext.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.white : Colors.black;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SvgPicture.asset(
              //   image[index],
              //   height: 20,
              //   fit: BoxFit.fitHeight,
              //   color: _bottomNavIndex == index ? Colors.white : Colors.black,
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
                    style:GoogleFonts.montserrat(
                      color: color,
                    ),
                  ),),
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
        onTap: (index) {
          // this has changed
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}
