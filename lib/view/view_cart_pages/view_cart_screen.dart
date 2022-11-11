import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/view_cart_pages/payment_screen.dart';
import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';
import '../../controllers/view_cart_controller.dart';
import '../home_Screen/home_navigationbar.dart';
import '../home_Screen/home_page.dart';
import '../order_history_page/order_history.dart';
import '../profile_screen/profile_screen.dart';
import 'address_screen.dart';

class ViewCartPage extends StatefulWidget {
  const ViewCartPage({super.key});

  @override
  State<ViewCartPage> createState() => _ViewCartPageState();
}

class _ViewCartPageState extends State<ViewCartPage> {
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
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                homeController.bottomIcon(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeNavigationBar()),
                );
              },
              child: Icon(
                Icons.arrow_back,
              )),
          title: Text(
            "View Cart",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSpacing: -10,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image(
                  height: 45,
                  width: 45,
                  image: AssetImage("assets/images/Group 3470.png")),
            ),
          ],
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
      body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xff289445),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 23,
                                width: 23,
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/sucessfully.png")),
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
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartAddresScreen()),
                                  );
                                },
                                child: Container(
                                  height: 23,
                                  width: 23,
                                  decoration: BoxDecoration(
                                      // color: darkGreenColor,
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              Text(
                                "Address",
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartPaymentScreen()),
                                  );
                                },
                                child: Container(
                                  height: 23,
                                  width: 23,
                                  decoration: BoxDecoration(
                                      //color: darkGreenColor,
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              Text(
                                "Order",
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height:size.height * 0.6,
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top: 10),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                              Obx(
                                                () => Container(
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
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Container(
                                                width: size.width * 0.51,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    // Text(
                                                    //   "25 Points",
                                                    //   style: GoogleFonts.roboto(
                                                    //     fontSize: 13.sp,
                                                    //     color: Color(0xffF9A20D),
                                                    //     fontWeight: FontWeight.w500,
                                                    //   ),
                                                    // ),
                                                    Container(
                                                      height: 30,
                                                      width: 100,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          InkWell(
                                                              onTap: () {
                                                                c.decrement();
                                                              },
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(5.0),
                                                                child: Icon(
                                                                  Icons.remove,
                                                                  size: 17,
                                                                  color: Color(
                                                                      0xff016942),
                                                                ),
                                                              )),
                                                          Container(
                                                            height: 30,
                                                            width: 35,
                                                            child: Center(
                                                              child: Obx(() => Text(
                                                                    "0${c.product.toString()}",
                                                                    style:
                                                                        GoogleFonts
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
                                                            decoration:
                                                                BoxDecoration(
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
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(5.0),
                                                                child: Icon(
                                                                  Icons.add,
                                                                  size: 17,
                                                                  color: Color(
                                                                      0xff016942),
                                                                ),
                                                              )),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xff016942)),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  10),
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
                              //
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 10, right: 10, left: 5),
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
                              Obx(
                                () => Container(
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
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          // Container(
                          //   height: 30,
                          //   width: 100.w,
                          //   child: Center(
                          //     child: Text(
                          //       "25 Points Saved",
                          //       style: GoogleFonts.roboto(
                          //         fontSize: 12.sp,
                          //         color: Color(0xff016942),
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ),
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       color: Color(0xffE4E4E4)),
                          // ),
                          
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CartAddresScreen()),
                              );
                            },
                            child: Container(
                              height: 35,
                              width: 140,
                              child: Center(
                                child: Text(
                                  "Delivery Address",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
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
                  ],
                ),
              ),
            ),
          );
        }
      ),
     
    );
  }
}
