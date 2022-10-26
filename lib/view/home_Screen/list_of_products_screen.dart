import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/home_Controllers.dart';
import '../order_history_page/order_history.dart';
import '../profile_screen/profile_screen.dart';
import '../view_cart_pages/view_cart_screen.dart';
import 'home_page.dart';

class ListOfProductScreen extends StatefulWidget {
  const ListOfProductScreen({super.key});

  @override
  State<ListOfProductScreen> createState() => _ListOfProductScreenState();
}

class _ListOfProductScreenState extends State<ListOfProductScreen> {

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
        title: Text("What are you looking?",
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
                      //last
                      
                    ],
                  ),
                ]),
            ),

                    ]),
            ),
            ),
            // bottomNavigationBar: Obx(() => (
            //    Container(
            //   color: Colors.white,
            //   child: Container(
            //     height: 60,
            //     decoration: BoxDecoration(
            //       color: Color(0xff289445),
            //         borderRadius:
            //             BorderRadius.only(topLeft: Radius.circular(35))),
            //             child: Center(
            //         child: Padding(
            //           padding: const EdgeInsets.only(top: 10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                 height: 40,
            //                 child: InkWell(
            //                   onTap: () {
            //                     homeController.bottomIcon(1);
            //                     Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) => const HomePage()),
            //                     );
            //                   },
            //                   child: Column(
            //                     children: [
            //                       Image(
            //                         height: 20,
            //                         fit: BoxFit.fitHeight,
            //                         image: AssetImage("assets/images/home.png"),
            //                         color: homeController.bottomIcon == 1
            //                             ? Colors.white
            //                             : Colors.black,
            //                       ),
            //                       Text(
            //                         "Home",
            //                         style:  GoogleFonts.montserrat(
            //                           fontSize: 12,
            //                           color: homeController.bottomIcon == 1
            //                               ? Colors.white
            //                               : Colors.black,
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //               Container(
            //                 height: 42,
            //                 child: InkWell(
            //                   onTap: () {
            //                     homeController.bottomIcon(2);
            //                     Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) =>
            //                               const ViewCartPage()),
            //                     );
            //                   },
            //                   child: Column(
            //                     children: [
            //                       Image(
            //                         height: 20,
            //                         fit: BoxFit.fitHeight,
            //                         image: AssetImage("assets/images/shop.png"),
            //                         color: homeController.bottomIcon == 2
            //                             ? Colors.white
            //                             : Colors.black,
            //                       ),
            //                       Text(
            //                         "Cart",
            //                         style:  GoogleFonts.montserrat(
            //                           fontSize: 12,
            //                           color: homeController.bottomIcon == 2
            //                               ? Colors.white
            //                               : Colors.black,
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //               Container(
            //                 height: 40,
            //                 child: InkWell(
            //                   onTap: () {
            //                     homeController.bottomIcon(3);
            //                     Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) => const OrderHistoryScreen()),
            //                     );
            //                   },
            //                   child: Column(
            //                     children: [
            //                       Image(
            //                         height: 20,
            //                         fit: BoxFit.fitHeight,
            //                         image:
            //                             AssetImage("assets/images/Path 38.png"),
            //                         color: homeController.bottomIcon == 3
            //                             ? Colors.white
            //                             : Colors.black,
            //                       ),
            //                       Text(
            //                         "History",
            //                         style:  GoogleFonts.montserrat(
            //                           fontSize: 12,
            //                           color: homeController.bottomIcon == 3
            //                               ? Colors.white
            //                               : Colors.black,
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //               Container(
            //                 height: 50,
            //                 child: InkWell(
            //                   onTap: () {
            //                     homeController.bottomIcon(4);
            //                     Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) =>
            //                               const ProfilePage()),
            //                     );
            //                   },
            //                   child: Column(
            //                     children: [
            //                       Image(
            //                         height: 25,
            //                         fit: BoxFit.fitHeight,
            //                         image:
            //                             AssetImage("assets/images/profile.png"),
            //                         color: homeController.bottomIcon == 4
            //                             ? Colors.white
            //                             : Colors.black,
            //                       ),
            //                       Text(
            //                         "Profile",
            //                         style:  GoogleFonts.montserrat(
            //                           fontSize: 12,
            //                           color: homeController.bottomIcon == 4
            //                               ? Colors.white
            //                               : Colors.black,
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //   ),
            //    )
            //           ),
            // ),
    );
  }
}