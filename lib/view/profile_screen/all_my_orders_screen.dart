import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';

class AllMyOrdersScreen extends StatefulWidget {
  const AllMyOrdersScreen({super.key});

  @override
  State<AllMyOrdersScreen> createState() => _AllMyOrdersScreenState();
}

class _AllMyOrdersScreenState extends State<AllMyOrdersScreen> {
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
        title: Text("All My Orders",
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
                    padding:
                        const EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: darkGreenColor,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                        isDense: true,
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                       enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: darkGreenColor,
                                ),
                          
                          borderRadius: BorderRadius.circular(30),
                        ),
                        
                        hintText: "Search",
                        contentPadding: EdgeInsets.only(top: 5),
                        prefixIcon: Icon(
                          Icons.search,
                          color: darkGreenColor,
                          size: 30,
                          
                        ),
                        hintStyle: GoogleFonts.poppins(
                          color: const Color(0xff517937),
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                   height: size.height*0.72,
                   width: size.width,
            //  alignment: Alignment.topCenter,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          child: Column(
                      children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/image/21.png"),
                                      height: 70,
                                      width: 65,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order#: 999012",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "20-Jun-2022, 3:00 PM",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Estimated Delivery on 29 Sept",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: darkGreenColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rating",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                          color: const Color(0xff7D7979),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/image/asset-2.png"),
                                      height: 70,
                                      width: 65,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order#: 574777",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "12-Sept-2022, 2:00 PM",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Estimated Delivery on 12 Nov",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: Color(0xffD34E4E),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rating",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                          color: const Color(0xff7D7979),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                       height: 70,
                                        width: 65,
                                        image:
                                            AssetImage("assets/image/asset-1.png")),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order#: 896532",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "10-Agu-2022, 3:00 PM",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Estimated Delivery on 20 Nov",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: Color(0xffD34E4E),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rating",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                          color: const Color(0xff7D7979),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                       height: 70,
                                        width: 65,
                                        image:
                                            AssetImage("assets/image/asset-4.png")),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order#: 987654",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "20-Jun-2022, 3:00 PM",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Estimated Delivery on 23 Nov",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: Color(0xffD34E4E),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rating",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                          color: const Color(0xff7D7979),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                       height: 70,
                                        width: 65,
                                        image:
                                            AssetImage("assets/image/asset-1.png")),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order#: 999012",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "20-Jun-2022, 3:00 PM",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Estimated Delivery on 29 Sept",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: Color(0xffD34E4E),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rating",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                          color: const Color(0xff7D7979),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                       height: 70,
                                        width: 65,
                                      image: AssetImage("assets/image/21.png")),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order#: 999012",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "20-Jun-2022, 3:00 PM",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Estimated Delivery on 29 Sept",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: darkGreenColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rating",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                          color: const Color(0xff7D7979),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                       height: 70,
                                        width: 65,
                                      image: AssetImage("assets/image/21.png")),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order#: 999012",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "20-Jun-2022, 3:00 PM",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: const Color(0xff515C6F),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Estimated Delivery on 29 Sept",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12.sp,
                                            color: darkGreenColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rating",
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                          color: const Color(0xff7D7979),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Color(0xffD7A221),
                                        size: 13,
                                      ),
                                    ],
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
                  ),
                    ]
                    ),
            ),
            ),
    );
  }
}