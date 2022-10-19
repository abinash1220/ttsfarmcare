import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/home_Screen/product_one.dart';
import 'package:ttsfarmcare/view/home_Screen/product_three.dart';
import 'package:ttsfarmcare/view/home_Screen/product_two.dart';
import 'package:ttsfarmcare/view/home_Screen/product_view_screen.dart';

import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';
import '../about_product/about_product.dart';
import '../notification_page/notification_page.dart';
import '../order_history_page/order_history.dart';
import '../profile_screen/profile_screen.dart';
import '../view_cart_pages/view_cart_screen.dart';
import 'list_of_products_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final homeController = Get.find<HomeControllers>();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: Padding(
            padding: const EdgeInsets.only(top: 30,left: 10),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
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
                          SizedBox(width: 5,),
                          Image(image: AssetImage("assets/images/down-arrow.png"),
                          color: Colors.white,
                          )
                        ],
                      ),
                      Text(
                        "chennai",
                        style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
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
                                  builder: (context) =>
                                      const NotificationPage()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image(
                                image: AssetImage("assets/images/Layer 2.png")),
                          )),
                     
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 45,width: 45,
                image: AssetImage("assets/images/Group 3470.png")),
            )
          ],
        ),
        titleSpacing: -5,
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
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight:Radius.circular(25) )),
                  child: ListView(
                    children: [
                      
                    Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Obx(() => (
               Column(
                children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            homeController.home(1);
            
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const LoginPage()),
                            // );
                          },
                          child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: darkGreenColor),
                              borderRadius: BorderRadius.circular(10),
                              color: homeController.home.value == 1
                                  ? darkGreenColor
                                  : Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Product 01",
                              style: GoogleFonts.montserrat(
                                  color: homeController.home.value == 1
                                      ? Colors.white
                                      : darkGreenColor),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            homeController.home(2);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const LoginPage()),
                            // );
                          },
                          child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: darkGreenColor),
                              borderRadius: BorderRadius.circular(10),
                              color: homeController.home.value == 2
                                  ? darkGreenColor
                                  : Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Product 02",
                              style: GoogleFonts.montserrat(
                                  color: homeController.home.value == 2
                                      ? Colors.white
                                      : darkGreenColor),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            homeController.home(3);
            
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const LoginPage()),
                            // );
                          },
                          child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: darkGreenColor),
                              borderRadius: BorderRadius.circular(10),
                              color: homeController.home.value == 3
                                  ? darkGreenColor
                                  : Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Product 03",
                              style: GoogleFonts.montserrat(
                                  color: homeController.home.value == 3
                                      ? Colors.white
                                      : darkGreenColor),
                            )),
                          ),
                        ),
                      ],
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
                                  builder: (context) => const ListOfProductScreen()),
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
                  if(homeController.home.value==1)
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 95,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "assets/images/Group 3475.png")),
                                Text(
                                  "JEEVAN",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff3B438C),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3476.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "SEEDS",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff58D96A),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3477.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "PAANDAV",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF42700),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3478.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "UREA\nFERTILIZER",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff9EB52F),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "assets/images/Group 3475.png")),
                                Text(
                                  "JEEVAN",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff3B438C),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3476.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "SEEDS",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff58D96A),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3477.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "PAANDAV",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF42700),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3478.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "UREA\nFERTILIZER",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff9EB52F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //product2
                  if(homeController.home.value==2)
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 95,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3478.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "UREA\nFERTILIZER",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 70, 174, 243),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3477.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "PAANDAV",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 240, 118, 18),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3476.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "SEEDS",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff58D96A),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "assets/images/Group 3475.png")),
                                Text(
                                  "JEEVAN",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 250, 49, 206),
                            ),
                          ),
                          
                          SizedBox(
                            width: 10,
                          ),
                           Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3478.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "UREA\nFERTILIZER",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 70, 174, 243),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3477.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "PAANDAV",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 240, 118, 18),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3476.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "SEEDS",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff58D96A),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "assets/images/Group 3475.png")),
                                Text(
                                  "JEEVAN",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 250, 49, 206),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //product3
                  if(homeController.home.value==3)
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 95,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3478.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "UREA\nFERTILIZER",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 57, 63, 6),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3477.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "PAANDAV",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 238, 64, 72),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3476.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "SEEDS",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 148, 132, 236),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "assets/images/Group 3475.png")),
                                Text(
                                  "JEEVAN",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 124, 228, 155),
                            ),
                          ),
                          
                          SizedBox(
                            width: 10,
                          ),
                           Container(
                      height: 95,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3478.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "UREA\nFERTILIZER",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 57, 63, 6),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3477.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "PAANDAV",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 238, 64, 72),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 60,
                                    child: Image.asset(
                                      "assets/images/Group 3476.png",
                                      height: 60,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Text(
                                  "SEEDS",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 148, 132, 236),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 95,
                            width: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "assets/images/Group 3475.png")),
                                Text(
                                  "JEEVAN",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 124, 228, 155),
                            ),
                          ),
                        ]
                      )
                           )
                        ],
                      ),
                    ),
                  ),
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
                                  builder: (context) => const ProductViewScreen()),
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
                  if(homeController.home.value==1)
                  ProductOne(),
                  //end
                  //product2
                  //first
                  if(homeController.home.value==2)
                  ProductTwo(),
                  //product3
                   //first
                   if(homeController.home.value==3)
                   ProductThree(),
                   //third
            
                ],
               )
              ),
            ),
          ),

                  ]),
            ),
            ),
            bottomNavigationBar: Obx(() => (
               Container(
              color: Colors.white,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff289445),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(35))),
                        child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
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
                                      builder: (context) => const HomePage()),
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
                                    style:  GoogleFonts.montserrat(
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
                                          const ViewCartPage()),
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
                                    style:  GoogleFonts.montserrat(
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
                                      builder: (context) => const OrderHistoryScreen()),
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
                                    style:  GoogleFonts.montserrat(
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
                                          const ProfilePage()),
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
                                    style:  GoogleFonts.montserrat(
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
               )
                      ),
            ),
    );
  }
}