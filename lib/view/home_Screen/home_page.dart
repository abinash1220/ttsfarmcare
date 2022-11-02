import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/all_product_api_controllers/all_product_api_controller.dart';
import 'package:ttsfarmcare/view/home_Screen/list_of_product_one.dart';
import 'package:ttsfarmcare/view/home_Screen/list_of_product_three.dart';
import 'package:ttsfarmcare/view/home_Screen/list_of_product_two.dart';
import 'package:ttsfarmcare/view/home_Screen/product_gridView.dart';
import 'package:ttsfarmcare/view/home_Screen/product_one.dart';
import 'package:ttsfarmcare/view/home_Screen/product_three.dart';
import 'package:ttsfarmcare/view/home_Screen/product_two.dart';
import 'package:ttsfarmcare/view/home_Screen/product_viewAll.dart';
import 'package:ttsfarmcare/view/home_Screen/product_view_screen.dart';
import 'package:ttsfarmcare/view/home_Screen/test_screen.dart';
import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';
import '../about_product/about_product.dart';
import '../notification_page/notification_page.dart';
import '../order_history_page/order_history.dart';
import '../order_history_page/types_of_product.dart';
import '../profile_screen/profile_screen.dart';
import '../view_cart_pages/view_cart_screen.dart';
import 'list_of_products_screen.dart';
import 'list_product_bottombar.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Get.find<HomeControllers>();

  final allProductController = Get.find<AllProductController>();

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
    Address = '${place.subLocality}';
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    homeController.getAllCategorys();
    allProductController.allProducts(1);
    homeController.home(0);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 110,
          leading: Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () async {
                                  Position position =
                                      await _getGeoLocationPosition();
                                  location =
                                      'Lat: ${position.latitude} , Long: ${position.longitude}';
                                  GetAddressFromLatLong(position);
                                },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Location",
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            // Image(
                            //   image: AssetImage("assets/images/down-arrow.png"),
                            //   color: Colors.white,
                            // )
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () async {
                                  Position position =
                                      await _getGeoLocationPosition();
                                  location =
                                      'Lat: ${position.latitude} , Long: ${position.longitude}';
                                  GetAddressFromLatLong(position);
                                },
                                child: Icon(
                                  Icons.location_on,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "${Address}",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              SizedBox(
                height: 35.h,
                width: 170.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Search product",
                    contentPadding: EdgeInsets.only(top: 5),
                    prefixIcon: Icon(Icons.search),
                    hintStyle: GoogleFonts.montserrat(
                      color: const Color(0xff517937),
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationPage()),
                    );
                  },
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(
                    height: 45,
                    width: 45,
                    image: AssetImage("assets/images/Group 3470.png")),
              )
            ],
          ),
          titleSpacing: 5,
          toolbarHeight: 92,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            color: Colors.white,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Color(0xff289445),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40))),
            ),
          )),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff289445),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GetBuilder<HomeControllers>(
                builder: (_) => (Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: 40,
                        child: homeController.categoryList.isEmpty
                            ? Container(
                                height: 5,
                              )
                            : ListView.builder(
                                itemCount: homeController.categoryList.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: InkWell(
                                      onTap: () {
                                        print(index);
                                        homeController.home(index);
                                        allProductController.allProducts(homeController
                                                .categoryList[index].id);
                                         homeController.update();

                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => const LoginPage()),
                                        // );
                                      },
                                      child: Container(
                                        height: 35,
                                       // width: 100,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: darkGreenColor),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              homeController.home.value == index
                                                  ? darkGreenColor
                                                  : Colors.white,
                                        ),
                                        child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10,right: 10),
                                              child: Text(
                                          homeController
                                                .categoryList[index].name,
                                          style: GoogleFonts.montserrat(
                                                color:
                                                    homeController.home.value ==
                                                            index
                                                        ? Colors.white
                                                        : darkGreenColor),
                                        ),
                                            )),
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "What are you looking?",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ListBottomBar()),
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  "View All",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(Icons.navigate_next)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //first
                    if (homeController.home.value == 0) ListOfProductOne(),
                    //second
                    if (homeController.home.value == 1) ListOfProductTwo(),
                    //third
                    if (homeController.home.value == 2) ListOfProductThree(),
                    //fourth
                    if (homeController.home.value == 3) ListOfProductOne(),
                    //five
                    if (homeController.home.value == 4) ListOfProductTwo(),
                    //six
                    if (homeController.home.value == 5) ListOfProductThree(),
                    //seven
                    if (homeController.home.value == 6) ListOfProductOne(),  
                    //next
                    SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Product Deals",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductViewBottomBar()),
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  "View All",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(Icons.navigate_next)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //first
                    GetBuilder<AllProductController>(
                      builder: (_) {
                        return ProductGridView(productList:allProductController.productList,);
                      }
                    ),
                    //second
                    // if (homeController.home.value == 1) ProductTwo(),
                    // //third
                    // if (homeController.home.value == 2) ProductThree(),
                    // //fourth
                    // if (homeController.home.value == 3) ProductOne(),
                    // //five
                    // if (homeController.home.value == 4) ProductTwo(),
                    // //six
                    // if (homeController.home.value == 5) ProductThree(),
                    // //seven
                    // if (homeController.home.value == 6) ProductOne(),
                  ],
                )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
