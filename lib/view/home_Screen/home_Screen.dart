import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/home_Screen/view_cart.screen.dart';
import 'package:ttsfarmcare/view/order_history_page/order_history_screen.dart';

import '../../controllers/home_Controllers.dart';
import '../../controllers/sign_up_controllers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.find<HomeControllers>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(392, 803),
      minTextAdapt: true,
    );

    var size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/Group 3361.png"),
           // fit: BoxFit.fill,

          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "chennai",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child:
                      Image(image: AssetImage("assets/images/down-arrow.png")),
                ),
                SizedBox(
                  width: 13.w,
                ),
                SizedBox(
                  height: 35.h,
                  width: 170.w,
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
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                        color: const Color(0xff517937),
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child:
                          Image(image: AssetImage("assets/images/Layer 2.png")),
                    )),
                SizedBox(
                  width: 5.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: SizedBox(
                      height: 50.h,
                      child: Image(
                          image: AssetImage("assets/images/Group 3466.png"))),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Obx(
                    () => (Row(
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
                              style: TextStyle(
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
                              style: TextStyle(
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
                              style: TextStyle(
                                  color: homeController.home.value == 3
                                      ? Colors.white
                                      : darkGreenColor),
                            )),
                          ),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "What are you looking?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Icon(Icons.navigate_next)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
                                  style: TextStyle(
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
                  SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Deals",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Icon(Icons.navigate_next)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 150.h,
                          width: 110.w,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image(
                                    image: AssetImage("assets/images/21.png")),
                              ),
                              Text(
                                "JEEVAN",
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
                                padding: const EdgeInsets.only(right: 5, left: 5),
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
                        Container(
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
                                padding: const EdgeInsets.only(right: 5, left: 5),
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
                        Container(
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
                                padding: const EdgeInsets.only(right: 5, left: 5),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
            
                  //second
            
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 150,
                          width: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 50),
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
                                padding: const EdgeInsets.only(right: 5, left: 5),
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
                        Container(
                          height: 150,
                          width: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 50),
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
                                padding: const EdgeInsets.only(right: 5, left: 5),
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
                        Container(
                          height: 150,
                          width: 110,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 50),
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
                                padding: const EdgeInsets.only(right: 5, left: 5),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => (Stack(children: [
          Image(image: AssetImage("assets/images/Group 3362.png")),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 50),
            child: (Row(
              children: [
                InkWell(
                  onTap: () {
                    homeController.bottomIcon(1);
                  },
                  child: Image(
                    image: AssetImage("assets/images/home.png"),
                    color: homeController.bottomIcon == 1
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                InkWell(
                  onTap: () {
                    homeController.bottomIcon(2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewCartScreen()),
                    );
                  },
                  child: Image(
                    image: AssetImage("assets/images/shop.png"),
                    color: homeController.bottomIcon == 2
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                InkWell(
                  onTap: () {
                    homeController.bottomIcon(3);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderHistory()),
                    );
                  },
                  child: Image(
                    image: AssetImage("assets/images/Path 38.png"),
                    color: homeController.bottomIcon == 3
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                InkWell(
                  onTap: () {
                    homeController.bottomIcon(4);
                  },
                  child: Image(
                    image: AssetImage("assets/images/profile.png"),
                    color: homeController.bottomIcon == 4
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ],
            )),
          ),
          Positioned(
            bottom: 15,
            left: 42,
            child: Row(
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                    color: homeController.bottomIcon == 1
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Cart",
                  style: TextStyle(
                    color: homeController.bottomIcon == 2
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "History",
                  style: TextStyle(
                    color: homeController.bottomIcon == 3
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    color: homeController.bottomIcon == 4
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ])),
      ),
    );
  }
}
