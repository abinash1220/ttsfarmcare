import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/profile_screen/all_my_orders_gridview.dart';

import '../../constants/app_colors.dart';
import '../../controllers/oreder_history_api_controllers/order_history_api_controllers.dart';

class AllMyOrdersScreen extends StatefulWidget {
  const AllMyOrdersScreen({super.key});

  @override
  State<AllMyOrdersScreen> createState() => _AllMyOrdersScreenState();
}

class _AllMyOrdersScreenState extends State<AllMyOrdersScreen> {

  final orderHistoryControllers = Get.find<OrderHistoryControllers>();


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
          body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
              return Container(
                   decoration: BoxDecoration(
                  color: Color(0xff289445),
        ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
                      child: Column(
                        children: [
                      //      Padding(
                      //   padding:
                      //       const EdgeInsets.only(top: 20, left: 15, right: 15),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       focusedBorder: OutlineInputBorder(
                      //               borderSide: BorderSide(
                      //                 color: darkGreenColor,
                      //               ),
                      //               borderRadius: BorderRadius.circular(30),
                      //             ),
                      //       isDense: true,
                      //       filled: true,
                      //       fillColor: Color(0xffFFFFFF),
                      //      enabledBorder: OutlineInputBorder(
                      //               borderSide: BorderSide(
                      //                 color: darkGreenColor,
                      //               ),
                              
                      //         borderRadius: BorderRadius.circular(30),
                      //       ),
                            
                      //       hintText: "Search",
                      //       contentPadding: EdgeInsets.only(top: 5),
                      //       prefixIcon: Icon(
                      //         Icons.search,
                      //         color: darkGreenColor,
                      //         size: 30,
                              
                      //       ),
                      //       hintStyle: GoogleFonts.poppins(
                      //         color: const Color(0xff517937),
                      //         fontSize: 14.sp,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 20,),
                      Container(
                       height:constraints.maxHeight>570 ? size.height*0.8 : size.height*0.70,
                       width: size.width,
                //  alignment: Alignment.topCenter,
                        child: Padding(
                        padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
                        child: Container(
                          child: GetBuilder<OrderHistoryControllers>(
                            builder: (_) {
                              return AllMyOrdersGridview(
                                orderdata:orderHistoryControllers.orderdata,);
                            }
                          ),
                        ),
                      ),
                      ),
                        ]
                        ),
                ),
                );
            }
          ),
    );
  }
}