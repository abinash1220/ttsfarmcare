import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/view_cart_pages/payment_successfully_screen.dart';
import 'package:ttsfarmcare/view/view_cart_pages/view_cart_screen.dart';

import '../../constants/app_colors.dart';
import '../../controllers/payment_controller.dart';
import 'address_screen.dart';

class CartPaymentScreen extends StatefulWidget {
  const CartPaymentScreen({super.key});

  @override
  State<CartPaymentScreen> createState() => _CartPaymentScreenState();
}

class _CartPaymentScreenState extends State<CartPaymentScreen> {

  final PaymentController c = Get.put(PaymentController());

 void initState() {
    // TODO: implement initState
    super.initState();
    setDefault();
  }

  setDefault() {
    c.products(1);
    c.pricess(450.00);
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
          child: Icon(Icons.arrow_back,)
        ),
       title: Text("Payment",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
            ),
            titleSpacing: -10,
            actions: [
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Image(
                  height: 45,width: 45,
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
          body: Container(
               decoration: BoxDecoration(
              color: Color(0xff289445),
        ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                       Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: (){
                                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewCartPage()),
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Cart",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: (){
                                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartAddresScreen()),
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Address",
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 23,
                              width: 23,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/sucessfully.png")),
                              decoration: BoxDecoration(
                                  //color: darkGreenColor,
                                  border: Border.all(color: Color(0xff707070)),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              width: 10,
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
                      ]),
                    ),
                    SizedBox(height: 10,),

                    Container(
                  height: size.height*0.76,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Container(
                          height: 150,
                          width: 400,
                          child: Row(children: [
                            Container(
                              height: 130,
                              width: 80,
                              child: Image(
                                image: AssetImage("assets/images/21.png"),
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
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "120 gms",
                                    style: GoogleFonts.roboto(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                     // Icon(Icons.currency_rupee),
                                      Text(
                                        "₹569.00",
                                        style: GoogleFonts.roboto(
                                          fontSize: 19,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.lineThrough
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.currency_rupee),
                                      Obx(() =>  Container(
                                        width: 70,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "${c.pricess.toStringAsFixed(2)}",
                                            style: GoogleFonts.roboto(
                                              fontSize: 18.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "25 Points",
                                        style: GoogleFonts.roboto(
                                          fontSize: 13,
                                          color: Color(0xffF9A20D),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
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
                                                          "0${c.products.toString()}",
                                                          style: GoogleFonts.roboto(
                                                            color: darkGreenColor,
                                                            fontWeight: FontWeight.bold,
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
                                ],
                              ),
                            ),
                          ]),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff707070)),
                            color: Color(0xffE4E4E4),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      //
                      Container(
                        height: 45,
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
                        height: 10,
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
                                fontSize: 18,
                              ),
                            ),
                            Obx(() =>  Container(
                                        width: 70,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "${c.pricess.toStringAsFixed(2)}",
                                            style: GoogleFonts.roboto(
                                              fontSize: 18.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Shipping charges",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Free",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xff707070),
                      ),
                      SizedBox(
                        height: 10,
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
                                fontSize: 18,
                              ),
                            ),
                            Obx(() =>  Container(
                                        width: 70,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "${c.pricess.toStringAsFixed(2)}",
                                            style: GoogleFonts.roboto(
                                              fontSize: 21.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 45,
                        width: size.width,
                        color: darkGreenColor,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 230),
                            child: Text(
                              "Payment Using",
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
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Image(
                                image: AssetImage("assets/image/credit-card.png")),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Debit / Credit cards",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xff707070),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Image(image: AssetImage("assets/image/wallet.png")),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Wallet",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xff707070),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Image(
                                image: AssetImage(
                                    "assets/image/cashless-payment.png")),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "UPI / Payments",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xff707070),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Image(image: AssetImage("assets/image/provider.png")),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Net Banking",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xff707070),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Image(
                                image: AssetImage(
                                    "assets/image/cash-on-delivery.png")),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Cash on delivery",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xff707070),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PaymentSuccessfullScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: 50,
                            width: 130,
                            child: Center(
                              child: Text(
                                "Confirm Payments",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 21,
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
                    ],
                  ),
                ),

                  ]),
            ),
            ),
    );
  }
}