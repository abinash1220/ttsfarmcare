import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/oreder_history_api_controllers/order_history_api_controllers.dart';
import 'package:ttsfarmcare/view/order_history_page/order_history_gridview.dart';

import '../../controllers/home_Controllers.dart';
import '../home_Screen/home_navigationbar.dart';
import '../home_Screen/home_page.dart';
import '../home_Screen/product_gridView.dart';
import '../profile_screen/profile_screen.dart';
import '../view_cart_pages/view_cart_screen.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  final homeController = Get.find<HomeControllers>();

  final orderHistoryControllers = Get.find<OrderHistoryControllers>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     WidgetsBinding.instance
        .addPostFrameCallback((_) => getOrder());
  }

  getOrder(){
    orderHistoryControllers.getOrderHistory();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                homeController.bottomIcon(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomeNavigationBar()),
                );
                
              },
              child: Icon(
                Icons.arrow_back,
              )),
          title: Text(
            "Order History",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSpacing: -10,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image(
                  height: 45,
                  width: 45,
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
      body:  Container(
            decoration: BoxDecoration(
              color: Color(0xff289445),
            ),
            child: 
                 Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25)
                          )),
                  child: 
                       Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15, right: 15,bottom: 10),
                        child: Container(
                          child: GetBuilder<OrderHistoryControllers>(
                            builder: (_) {
                              return OrderHistoryGridview(
                                orderdata:orderHistoryControllers.orderdata,);
                            }
                          ),
                        ),
                      ),
                  ),
                ),
            );
          
  }
}
