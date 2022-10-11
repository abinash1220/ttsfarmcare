import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/home_Screen/view_cart.screen.dart';

import '../../controllers/home_Controllers.dart';
import '../order_history_page/order_history_screen.dart';
import '../profile_screen/profile_page.dart';
import 'home_Screen.dart';

class ListOfProducts extends StatefulWidget {
  const ListOfProducts({super.key});

  @override
  State<ListOfProducts> createState() => _ListOfProductsState();
}

class _ListOfProductsState extends State<ListOfProducts> {

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
                  ? size.height * 0.66
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
                            "List Of Products",
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
                          ],
                        ),
                      ),
                      //second
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
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
                          ],
                        ),
                      ),
                      //third
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
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
                          ],
                        ),
                      ),
                      //fourth
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Row(
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
