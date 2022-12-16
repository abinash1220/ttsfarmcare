import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/create_order_api_controllers/create_order_api_controller.dart';
import 'package:ttsfarmcare/controllers/notification_api_controllers/notification_api_controller.dart';
import 'package:ttsfarmcare/controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import 'package:ttsfarmcare/models/notification_model.dart';
import 'package:ttsfarmcare/view/home_Screen/home_navigationbar.dart';
import 'package:ttsfarmcare/view/view_cart_pages/payment_successfully_screen.dart';
import 'package:ttsfarmcare/view/view_cart_pages/view_cart_screen.dart';

import '../../constants/app_colors.dart';
import '../../controllers/add_to_cart_api_controllers/get_cart_api_controller.dart';
import '../../controllers/payment_controller.dart';
import 'address_screen.dart';
import 'get_cart_listView.dart';

class CartPaymentScreen extends StatefulWidget {
  const CartPaymentScreen({super.key});

  @override
  State<CartPaymentScreen> createState() => _CartPaymentScreenState();
}

class _CartPaymentScreenState extends State<CartPaymentScreen> {
  final PaymentController c = Get.put(PaymentController());

  final createOrderController = Get.find<CreateOrderController>();
  final notificationController = Get.find<NotificationControllers>();
  final getCartController = Get.find<GetCartControllers>();
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setDefault());
  }

  setDefault() {
    getCartController.getCart();
    c.products(1);
    c.pricess(450.00);
    notificationController.getNotification();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
              )),
          title: Text(
            "Place Order",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSpacing: -10,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image(
                  height: 45.h,
                  width: 45.w,
                  image: AssetImage("assets/images/Group 3470.png")),
            ),
          ],
          toolbarHeight: 92,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            color: Colors.white,
            child: Container(
              height: 300.h,
              decoration: BoxDecoration(
                  color: Color(0xff289445),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40))),
            ),
          )),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0xff289445),
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25))),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeNavigationBar(
                                      index: 1,
                                    )),
                          );
                        },
                        child: Container(
                          height: 23.h,
                          width: 23.w,
                          decoration: BoxDecoration(
                              // color: darkGreenColor,
                              border: Border.all(color: Color(0xff707070)),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeNavigationBar(
                                      index: 1,
                                    )),
                          );
                        },
                        child: Text(
                          "Cart",
                          style: GoogleFonts.montserrat(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartAddresScreen()),
                          );
                        },
                        child: Container(
                          height: 23.h,
                          width: 23.w,
                          decoration: BoxDecoration(
                              // color: darkGreenColor,
                              border: Border.all(color: Color(0xff707070)),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartAddresScreen()),
                          );
                        },
                        child: Text(
                          "Address",
                          style: GoogleFonts.montserrat(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 25.h,
                        width: 25.w,
                        child: Image(
                            image: AssetImage("assets/images/sucessfully.png")),
                        decoration: BoxDecoration(
                            //color: darkGreenColor,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Text(
                        "Order",
                        style: GoogleFonts.montserrat(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 10.h,
              ),
              //height:constraints.maxHeight>570 ? size.height*0.25 : size.height*0.74,
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Container(
                  height: size.height * 0.25,
                  child: GetBuilder<GetCartControllers>(builder: (_) {
                    return GetCartListView(
                        getCartDetails: getCartController.getCartDetails);
                  }),
                ),
              ),

              SizedBox(
                height: 10.h,
              ),

              Container(
                height: 45.h,
                width: size.width,
                color: darkGreenColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 230),
                    child: Text(
                      "Order Summary",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total MRP",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                      ),
                    ),
                    Obx(
                      () => Container(
                        width: 70.w,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "${getCartController.totalPrice.value}",
                            style: GoogleFonts.roboto(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping charges",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                      ),
                    ),
                    Text(
                      "Free",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1,
                color: Color(0xff707070),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Final payable",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                      ),
                    ),
                    Obx(
                      () => Container(
                        width: 70.w,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "${getCartController.totalPrice.value}",
                            style: GoogleFonts.roboto(
                              fontSize: 21.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 45.h,
                width: size.width.w,
                color: darkGreenColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 230),
                    child: Text(
                      "Payment Using",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Image(
                        image: AssetImage("assets/image/cash-on-delivery.png")),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Cash on delivery",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                ),
              ),
            const  Divider(
                thickness: 1,
                color: Color(0xff707070),
              ),
              SizedBox(
                height: 35.h,
              ),
              InkWell(
                onTap: () {
                  for (int b = 0;
                      b < getCartController.getCartDetails.length;
                      b++) {
                    createOrderController.addCreateOrder(
                        product_id:
                            getCartController.getCartDetails[b].productId,
                        quantity: getCartController.getCartDetails[b].quantity,
                        amount: Get.find<GetProfileControllers>()
                                    .profileDetails
                                    .role ==
                                "Retail"
                            ? getCartController
                                .getCartDetails[b].product.priceRetailer
                            : getCartController
                                .getCartDetails[b].product.priceCustomer,
                        payment_method_id: "1",
                        address_id: "1",
                        payment_status: "",
                        cart_id:
                            getCartController.getCartDetails[b].id.toString());
                  }
                  setDefault();
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 50.h,
                    width: size.width.w,
                    child:  Center(
                      child: Text(
                        "Confirm Order",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: darkGreenColor,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        );
      }),
    );
  }
}
