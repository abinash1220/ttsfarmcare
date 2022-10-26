import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';

class TypesOfProducts extends StatefulWidget {
  const TypesOfProducts({super.key});

  @override
  State<TypesOfProducts> createState() => _TypesOfProductsState();
}

class _TypesOfProductsState extends State<TypesOfProducts> {

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
        title: Text("Our Products",
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
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),)),
                  child: Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                        child: Row(
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
                            SizedBox(width: 15,),
                            InkWell(
                              onTap: () {
                                homeController.home(4);

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
                                  color: homeController.home.value == 4
                                      ? darkGreenColor
                                      : Colors.white,
                                ),
                                child: Center(
                                    child: Text(
                                  "Product 04",
                                  style: GoogleFonts.montserrat(
                                      color: homeController.home.value == 4
                                          ? Colors.white
                                          : darkGreenColor),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
            ),
          ),
    );
  }
}