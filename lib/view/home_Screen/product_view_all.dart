import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/home_Screen/view_cart.screen.dart';

import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';
import '../about_product/about_product_page.dart';
import '../order_history_page/order_history_screen.dart';
import '../profile_screen/profile_page.dart';
import 'home_Screen.dart';

class ProductViewAll extends StatefulWidget {
  const ProductViewAll({super.key});

  @override
  State<ProductViewAll> createState() => _ProductViewAllState();
}

class _ProductViewAllState extends State<ProductViewAll> {

final homeController = Get.find<HomeControllers>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        return Container(
          child: Column(
            children: [
              Container(
              height: constraints.maxHeight > 600
                  ? size.height * 0.22
                  : size.height * 0.3,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image(
                      image: AssetImage("assets/images/Group 3361.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Product View All",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Image(
                            image: AssetImage("assets/images/Group 3466.png")),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 140, left: 15, right: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        // filled: true,
                        // fillColor: Color(0xffECF2F0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Search product",
                        contentPadding: EdgeInsets.only(top: 5),
                        prefixIcon: Icon(
                          Icons.search,
                         // color: darkGreenColor,
                          size: 20,
                        ),
                        hintStyle: TextStyle(
                          //color: const Color(0xff517937),
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
               height: constraints.maxHeight > 600
                  ? size.height * 0.63
                  : size.height * 0.7,
              alignment: Alignment.topCenter,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                            "Product Deals",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  AboutProductScreen(
                                image: "assets/images/21.png",
                                name: "Micro Nutrition Jeevan",
                              )),
                            );
                          },
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image(
                                      image: AssetImage("assets/images/21.png")),
                                ),
                                Text(
                                  "Jeevan",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 60,
                                  ),
                                  child: Text(
                                    "220 gm",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 17,
                                        width: 52,
                                        child: Text(
                                          "Price:123",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: darkGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff517937)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  AboutProductScreen(
                                image: "assets/image/aa.png",
                                name: "Micro Nutrition Khatam",
                              )),
                            );
                          },
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    height: 80,
                                    width: 30,
                                    child: Image(
                                      image: AssetImage("assets/image/aa.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Khatma",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 60,
                                  ),
                                  child: Text(
                                    "120 gm",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 17,
                                        width: 52,
                                        child: Text(
                                          "Price:123",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: darkGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff517937)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  AboutProductScreen(
                                image: "assets/image/asset-4.png",
                                name: "Micro Nutrition Khatam",
                              )),
                            );
                          },
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image(
                                      image:
                                          AssetImage("assets/image/asset-4.png")),
                                ),
                                Text(
                                  "Growth",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 60,
                                  ),
                                  child: Text(
                                    "120 gm",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 17,
                                        width: 52,
                                        child: Text(
                                          "Price:123",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: darkGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff517937)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  //second
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                           onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  AboutProductScreen(
                                image: "assets/images/asset-3.png",
                                name: "Micro Nutrition Valorous",
                              )),
                            );
                          },
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 50),
                                        child: Container(
                                          height: 10,
                                          width: 40,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Out Of Sales",
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAB252),
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(5))),
                                        ),
                                      ),
                                      Image(
                                          image: AssetImage(
                                              "assets/images/asset-3.png")),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Valorous",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 60,
                                  ),
                                  child: Text(
                                    "220 gm",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 17,
                                        width: 52,
                                        child: Text(
                                          "Price:123",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: darkGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff517937)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        InkWell(
                           onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  AboutProductScreen(
                                image: "assets/image/asset-3.png",
                                name: "Micro Nutrition Kratus",
                              )),
                            );
                          },
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 50),
                                        child: Container(
                                          height: 10,
                                          width: 40,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Out Of Sales",
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAB252),
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(5))),
                                        ),
                                      ),
                                      Container(
                                        height: 80,
                                        width: 40,
                                        child: Image(
                                          image: AssetImage(
                                              "assets/image/asset-3.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Kratus",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 60,
                                  ),
                                  child: Text(
                                    "120 gm",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 17,
                                        width: 52,
                                        child: Text(
                                          "Price:123",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: darkGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff517937)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        InkWell(
                           onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  AboutProductScreen(
                                image: "assets/image/asset-5.png",
                                name: "Micro Nutrition Cardinal",
                              )),
                            );
                          },
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 50),
                                        child: Container(
                                          height: 10,
                                          width: 40,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Out Of Sales",
                                            style: TextStyle(
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAB252),
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(5))),
                                        ),
                                      ),
                                      Image(
                                          image: AssetImage(
                                              "assets/image/asset-5.png")),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Cardinal",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 60,
                                  ),
                                  child: Text(
                                    "120 gm",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 17,
                                        width: 52,
                                        child: Text(
                                          "Price:123",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: darkGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff517937)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  //third
                   Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  AboutProductScreen(
                                image: "assets/images/21.png",
                                name: "Micro Nutrition Jeevan",
                              )),
                            );
                          },
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image(
                                      image: AssetImage("assets/images/21.png")),
                                ),
                                Text(
                                  "Jeevan",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 60,
                                  ),
                                  child: Text(
                                    "220 gm",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 17,
                                        width: 52,
                                        child: Text(
                                          "Price:123",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: darkGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff517937)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  AboutProductScreen(
                                image: "assets/image/aa.png",
                                name: "Micro Nutrition Khatam",
                              )),
                            );
                          },
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    height: 80,
                                    width: 30,
                                    child: Image(
                                      image: AssetImage("assets/image/aa.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Khatma",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 60,
                                  ),
                                  child: Text(
                                    "120 gm",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 17,
                                        width: 52,
                                        child: Text(
                                          "Price:123",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: darkGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff517937)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  AboutProductScreen(
                                image: "assets/image/asset-4.png",
                                name: "Micro Nutrition Khatam",
                              )),
                            );
                          },
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image(
                                      image:
                                          AssetImage("assets/image/asset-4.png")),
                                ),
                                Text(
                                  "Growth",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 60,
                                  ),
                                  child: Text(
                                    "120 gm",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 17,
                                        width: 52,
                                        child: Text(
                                          "Price:123",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                            color: darkGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff517937)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                    ],
                  ),
                ]),
            ),
            
            ]),
        );
      }),
      bottomNavigationBar: Obx(
        () => Container(
          height: 90,
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Group 3362.png"),
                        fit: BoxFit.fill)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
