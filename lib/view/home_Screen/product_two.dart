import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../about_product/about_product.dart';

class ProductTwo extends StatefulWidget {
  const ProductTwo({super.key});

  @override
  State<ProductTwo> createState() => _ProductTwoState();
}

class _ProductTwoState extends State<ProductTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutProduct(
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
                                            style: GoogleFonts.roboto(
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAB252),
                                              borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(5))),
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
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
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
                                    style: GoogleFonts.montserrat(
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
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutProduct(
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
                                            style: GoogleFonts.roboto(
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAB252),
                                              borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(5))),
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
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
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
                                    style: GoogleFonts.montserrat(
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
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutProduct(
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
                                            style: GoogleFonts.roboto(
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAB252),
                                              borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(5))),
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
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
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
                                    style: GoogleFonts.montserrat(
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
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                  //if(homeController.home.value==2)
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutProduct(
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
                                      image:
                                          AssetImage("assets/images/21.png")),
                                ),
                                Text(
                                  "Jeevan",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
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
                                    style: GoogleFonts.montserrat(
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
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10.sp,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutProduct(
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
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
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
                                    style: GoogleFonts.montserrat(
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
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutProduct(
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
                                      image: AssetImage(
                                          "assets/image/asset-4.png")),
                                ),
                                Text(
                                  "Growth",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
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
                                    style: GoogleFonts.montserrat(
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
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                // if(homeController.home.value==2)
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutProduct(
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
                                            style: GoogleFonts.roboto(
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAB252),
                                              borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(5))),
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
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
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
                                    style: GoogleFonts.montserrat(
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
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutProduct(
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
                                            style: GoogleFonts.roboto(
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAB252),
                                              borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(5))),
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
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
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
                                    style: GoogleFonts.montserrat(
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
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutProduct(
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
                                            style: GoogleFonts.roboto(
                                              fontSize: 6,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAB252),
                                              borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(5))),
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
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
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
                                    style: GoogleFonts.montserrat(
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
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10,
                                            color: darkGreenColor,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffECF2F0),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                   SizedBox(height: 10,),
      ],
    );
  }
}