import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/home_Controllers.dart';
import '../home_Screen/home_navigationbar.dart';
import '../home_Screen/home_page.dart';
import '../profile_screen/profile_screen.dart';
import '../view_cart_pages/view_cart_screen.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  final homeController = Get.find<HomeControllers>();

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
                  MaterialPageRoute(builder: (context) =>  HomeNavigationBar()),
                );
              },
              child: Icon(
                Icons.arrow_back,
              )),
          title: Text(
            "Order History",
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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
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
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Container(
                    height:constraints.maxHeight>570 ? size.height * 0.73 : size.height* 0.71,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Container(
                          height: 100,
                          width: 350,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child:
                                    Image(image: AssetImage("assets/image/aa.png")),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 1,
                                color: Color(0xff686868),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Micro Nutrition Jeevan",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "2 Items",
                                          style: GoogleFonts.roboto(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Text(
                                          "Yesterday",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 100),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff686868)),
                            color: Color.fromARGB(255, 247, 244, 244),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: 350,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image(
                                    image: AssetImage("assets/image/asset-1.png")),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 1,
                                color: Color(0xff686868),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Micro Nutrition Jeevan",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "2 Items",
                                          style: GoogleFonts.roboto(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Text(
                                          "Yesterday",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 100),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff686868)),
                            color: Color.fromARGB(255, 247, 244, 244),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: 350,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image(
                                    image: AssetImage("assets/image/asset-2.png")),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 1,
                                color: Color(0xff686868),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Micro Nutrition Jeevan",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "2 Items",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Text(
                                          "Yesterday",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 100),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff686868)),
                            color: Color.fromARGB(255, 247, 244, 244),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: 350,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child:
                                    Image(image: AssetImage("assets/image/aa.png")),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 1,
                                color: Color(0xff686868),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Micro Nutrition Jeevan",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "2 Items",
                                          style: GoogleFonts.roboto(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Text(
                                          "Yesterday",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 100),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff686868)),
                            color: Color.fromARGB(255, 247, 244, 244),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: 350,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image(
                                    image: AssetImage("assets/image/asset-4.png")),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 1,
                                color: Color(0xff686868),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Micro Nutrition Jeevan",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "2 Items",
                                          style: GoogleFonts.roboto(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Text(
                                          "Yesterday",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffE4A819),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffE4A819),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffE4A819),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xff808080),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xff808080),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff686868)),
                            color: Color.fromARGB(255, 247, 244, 244),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: 350,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child:
                                    Image(image: AssetImage("assets/image/aa.png")),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 100,
                                width: 1,
                                color: Color(0xff686868),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Micro Nutrition Jeevan",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "2 Items",
                                          style: GoogleFonts.roboto(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Text(
                                          "Yesterday",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 17,
                                            //fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 100),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE4A819),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff808080),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff686868)),
                            color: Color.fromARGB(255, 247, 244, 244),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          );
        }
      ),
      
    );
  }
}
