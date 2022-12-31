import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
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

  String location = 'Null, Press Button';
  String Address = 'search';

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);
    Placemark place = placemarks[0];
    setState(() {
      Address = '${place.subLocality}';
    });
  }
   
    getlocation() async {
    Position position = await _getGeoLocationPosition();
    location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    GetAddressFromLatLong(position);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bottomNavIndex = widget.index;
    // getlocation();
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
