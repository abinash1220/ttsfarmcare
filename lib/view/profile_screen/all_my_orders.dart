import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';

class AllMyOrders extends StatefulWidget {
  const AllMyOrders({super.key});

  @override
  State<AllMyOrders> createState() => _AllMyOrdersState();
}

class _AllMyOrdersState extends State<AllMyOrders> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        return Container(
          height: size.height,
          child: Column(children: [
            Container(
              height: constraints.maxHeight > 600
                  ? size.height * 0.25
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
                              "All My Orders",
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
                        filled: true,
                        fillColor: Color(0xffECF2F0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Search product",
                        contentPadding: EdgeInsets.only(top: 5),
                        prefixIcon: Icon(
                          Icons.search,
                          color: darkGreenColor,
                          size: 20,
                        ),
                        hintStyle: TextStyle(
                          color: const Color(0xff517937),
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
                  ? size.height * 0.7
                  : size.height * 0.7,
              alignment: Alignment.topCenter,
              child: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff7D7979),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
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
                        padding: const EdgeInsets.only(left: 15, right: 15),
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff7D7979),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
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
                        padding: const EdgeInsets.only(left: 15, right: 15),
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff7D7979),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
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
                        padding: const EdgeInsets.only(left: 15, right: 15),
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff7D7979),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
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
                        padding: const EdgeInsets.only(left: 15, right: 15),
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff7D7979),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
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
                        padding: const EdgeInsets.only(left: 15, right: 15),
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff7D7979),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
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
                        padding: const EdgeInsets.only(left: 15, right: 15),
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                      style: TextStyle(
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
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xff7D7979),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Color(0xffD7A221),
                                    size: 17,
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
                    ],
                  ),
                ],
              ),
            ),
          ]),
        );
      }),
    );
  }
}
