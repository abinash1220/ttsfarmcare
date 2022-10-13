import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/order_history_page/order_history_screen.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_page.dart';

import '../../controllers/home_Controllers.dart';
import '../../controllers/view_cart_controller.dart';
import 'address_screen.dart';
import 'home_Screen.dart';

class ViewCartScreen extends StatefulWidget {
  const ViewCartScreen({super.key});

  @override
  State<ViewCartScreen> createState() => _ViewCartScreenState();
}

class _ViewCartScreenState extends State<ViewCartScreen> {
  int _counter = 0;

  final homeController = Get.find<HomeControllers>();
  final ViewCartController c = Get.put(ViewCartController());

  void initState() {
    // TODO: implement initState
    super.initState();
    setDefault();
  }

  setDefault() {
    c.product(1);
    c.price(450.00);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: size.width,
              // height: size.height * 0.35,
              child: Image(
                image: AssetImage("assets/images/Group 3361.png"),
                fit: BoxFit.fill,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // InkWell(
                //   onTap: () {
                //     Get.back();
                //   },
                //   child: Icon(
                //     Icons.arrow_back,
                //     color: Colors.white,
                //   ),
                // ),

                Text(
                  "View Cart",
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Image(image: AssetImage("assets/images/Group 3466.png")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 23,
                      width: 23,
                      child: Image(
                          image: AssetImage("assets/images/sucessfully.png")),
                      decoration: BoxDecoration(
                          // color: darkGreenColor,
                          border: Border.all(color: Color(0xff707070)),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Text(
                      "Cart",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                          // color: darkGreenColor,
                          border: Border.all(color: Color(0xff707070)),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Text(
                      "Address",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                          //color: darkGreenColor,
                          border: Border.all(color: Color(0xff707070)),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Text(
                      "Payment",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: Container(
                          height: 150,
                          width: 390,
                          child: Row(children: [
                            Container(
                              height: 130,
                              width: 60,
                              child: Image(
                                image: AssetImage("assets/image/aa.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Micro Nutrition Khatam",
                                    //textAlign: TextAlign.start,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "120 gms",
                                    style: GoogleFonts.roboto(
                                      fontSize: 19.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                      // Icon(Icons.currency_rupee),
                                      Text(
                                        "₹569.00",
                                        style: GoogleFonts.roboto(
                                            fontSize: 19.sp,
                                            color: Color.fromARGB(
                                                255, 105, 104, 104),
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                     Icon(Icons.currency_rupee),
                                      Obx(() =>  Container(
                                        width: 70,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "${c.price.toStringAsFixed(2)}",
                                            style: GoogleFonts.roboto(
                                              fontSize: 18.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Container(
                                        width: size.width * 0.51,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "25 Points",
                                              style: GoogleFonts.roboto(
                                                fontSize: 13.sp,
                                                color: Color(0xffF9A20D),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              width: 100,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        c.decrement();
                                                      },
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(5.0),
                                                        child: Icon(
                                                          Icons.remove,
                                                          size: 17,
                                                          color:
                                                              Color(0xff016942),
                                                        ),
                                                      )),
                                                  Container(
                                                    height: 30,
                                                    width: 35,
                                                    child: Center(
                                                      child: Obx(() => Text(
                                                            "0${c.product.toString()}",
                                                            style: GoogleFonts
                                                                .roboto(
                                                              color:
                                                                  darkGreenColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 15,
                                                            ),
                                                          )),
                                                    ),
                                                    decoration: BoxDecoration(
                                                      border: Border.symmetric(
                                                          vertical: BorderSide(
                                                              color: Color(
                                                                  0xff016942))),
                                                    ),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        c.increment();
                                                      },
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(5.0),
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 17,
                                                          color:
                                                              Color(0xff016942),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xff016942)),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff707070)),
                            color: Color.fromARGB(255, 236, 235, 235),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => Container(
          height: 130,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Obx(
                      () => Text(
                        "${c.product.toString()} Iterms",
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          color: Color(0xff016942),
                        ),
                         Obx(() =>  Container(
                                        width: 70,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "${c.price.toStringAsFixed(2)}",
                                            style: GoogleFonts.roboto(
                                              fontSize: 18.sp,
                                              color: Color(0xff016942),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),),
                      ],
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Container(
                      height: 30,
                      width: 100.w,
                      child: Center(
                        child: Text(
                          "25 Points Saved",
                          style: GoogleFonts.roboto(
                            fontSize: 12.sp,
                            color: Color(0xff016942),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffE4E4E4)),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddressScreen()),
                        );
                      },
                      child: Container(
                        height: 35,
                        width: 110,
                        child: Center(
                          child: Text(
                            "Delivery Address",
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff016942)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Group 3362.png"),
                        fit: BoxFit.fill)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          child: InkWell(
                            onTap: () {
                              homeController.bottomIcon(1);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                              );
                            },
                            child: Column(
                              children: [
                                Image(
                                  height: 20,
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("assets/images/home.png"),
                                  color: homeController.bottomIcon == 1
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                Text(
                                  "Home",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: homeController.bottomIcon == 1
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 42,
                          child: InkWell(
                            onTap: () {
                              homeController.bottomIcon(2);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ViewCartScreen()),
                              );
                            },
                            child: Column(
                              children: [
                                Image(
                                  height: 20,
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("assets/images/shop.png"),
                                  color: homeController.bottomIcon == 2
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                Text(
                                  "Cart",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: homeController.bottomIcon == 2
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          child: InkWell(
                            onTap: () {
                              homeController.bottomIcon(3);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OrderHistory()),
                              );
                            },
                            child: Column(
                              children: [
                                Image(
                                  height: 20,
                                  fit: BoxFit.fitHeight,
                                  image:
                                      AssetImage("assets/images/Path 38.png"),
                                  color: homeController.bottomIcon == 3
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                Text(
                                  "History",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: homeController.bottomIcon == 3
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: InkWell(
                            onTap: () {
                              homeController.bottomIcon(4);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProfileScreen()),
                              );
                            },
                            child: Column(
                              children: [
                                Image(
                                  height: 25,
                                  fit: BoxFit.fitHeight,
                                  image:
                                      AssetImage("assets/images/profile.png"),
                                  color: homeController.bottomIcon == 4
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                Text(
                                  "Profile",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: homeController.bottomIcon == 4
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
