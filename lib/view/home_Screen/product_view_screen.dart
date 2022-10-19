import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';
import '../about_product/about_product.dart';
import '../order_history_page/order_history.dart';
import '../profile_screen/profile_screen.dart';
import '../view_cart_pages/view_cart_screen.dart';
import 'home_page.dart';

class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({super.key});

  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {

 final homeController = Get.find<HomeControllers>();

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
        title: Text("Product View All",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
            ),
            titleSpacing: -10,
            actions: [
               Image(image: AssetImage("assets/images/Group 3466.png")),
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
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight:Radius.circular(40) )),
                  child: Column(
                    children: [
                       Padding(
                    padding:
                        const EdgeInsets.only(top:20,left: 15, right: 15),
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
                  SizedBox(height: 20,),
                  Container(
              height: size.height*0.65,
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
                              MaterialPageRoute(builder: (context) =>  AboutProduct(
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
                              MaterialPageRoute(builder: (context) =>  AboutProduct(
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
                              MaterialPageRoute(builder: (context) =>  AboutProduct(
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
                              MaterialPageRoute(builder: (context) =>  AboutProduct(
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
                              MaterialPageRoute(builder: (context) =>  AboutProduct(
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
                              MaterialPageRoute(builder: (context) =>  AboutProduct(
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
                              MaterialPageRoute(builder: (context) =>  AboutProduct(
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
                              MaterialPageRoute(builder: (context) =>  AboutProduct(
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
                              MaterialPageRoute(builder: (context) =>  AboutProduct(
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