import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FinishedOrders extends StatefulWidget {
  const FinishedOrders({super.key});

  @override
  State<FinishedOrders> createState() => _FinishedOrdersState();
}

class _FinishedOrdersState extends State<FinishedOrders> {

  bool isCheked = true;

  List image = ["assets/images/21.png","assets/images/21.png","assets/images/asset-3.png","assets/images/asset-3.png","assets/images/21.png","assets/images/21.png"];

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
        title: Text("Finished Orders",
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
                     SizedBox(height: 10,),
                      Container(
                        height: size.height*0.81,
                         child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 20),
                            child: Container(
                              height: 110,
                              width: 350,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Image(
                                        image: AssetImage(image[index])),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 110,
                                    width: 1,
                                    color: Color(0xff686868),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                              activeColor: Color(0xff517937),
                                              value: isCheked,
                                              onChanged: (value) {}),
                                          Container(
                                            width: size.width * 0.45,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Micro Nutrition",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                      color: Color(0xff1C1C1E)),
                                                ),
                                                Text(
                                                  "Rating",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color: Color(0xff515C6F)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Image(
                                              image: AssetImage(
                                                  "assets/image/Group 3369.png")),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "VALOROUS:",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff1C1C1E)),
                                            ),
                                            Text(
                                              "RS 256.98:",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 13,
                                                  color: Color(0xff0D8446)),
                                            ),
                                            Container(
                                              width: size.width * 0.7,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "Qty : 01",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 13,
                                                        color: Color(0xff1C1C1E)),
                                                  ),
                                                  Text(
                                                    "Order Complete",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 13,
                                                        color: Color(0xff0D8446)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 194, 194, 194)),
                                color: Color.fromARGB(255, 247, 243, 243),
                              ),
                            ),
                          );
                        }))),
                    ],
                  ),
                  ),
            ),
    );
  }
}