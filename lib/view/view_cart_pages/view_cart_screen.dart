import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/add_to_cart_api_controllers/get_cart_api_controller.dart';
import 'package:ttsfarmcare/view/view_cart_pages/get_cart_listView.dart';
import 'package:ttsfarmcare/view/view_cart_pages/place_order_screen.dart';
import '../../constants/app_colors.dart';
import '../../controllers/home_Controllers.dart';
import '../../controllers/view_cart_controller.dart';
import '../home_Screen/home_navigationbar.dart';
import '../home_Screen/home_page.dart';
import '../order_history_page/order_history.dart';
import '../profile_screen/profile_screen.dart';
import 'address_screen.dart';

class ViewCartPage extends StatefulWidget {
  const ViewCartPage({super.key});

  @override
  State<ViewCartPage> createState() => _ViewCartPageState();
}

class _ViewCartPageState extends State<ViewCartPage> {
  int _counter = 0;

  final homeController = Get.find<HomeControllers>();

  final getCartController = Get.find<GetCartControllers>();

  final ViewCartController c = Get.find<ViewCartController>();

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     WidgetsBinding.instance
        .addPostFrameCallback((_) => getOrder());
  }

  getOrder(){
    getCartController.getCart();
    c.product(1);
    c.price(450.00);
    getCartController.totalitem(1);
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
                  MaterialPageRoute(builder: (context) => HomeNavigationBar()),
                );
              },
              child: Icon(
                Icons.arrow_back,
              )),
          title: Text(
            "View Cart",
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
      body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xff289445),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/sucessfully.png")),
                                decoration: BoxDecoration(
                                    // color: darkGreenColor,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              Text(
                                "Cart",
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartAddresScreen()),
                                  );
                                },
                                child: Container(
                                  height: 23,
                                  width: 23,
                                  decoration: BoxDecoration(
                                      // color: darkGreenColor,
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartAddresScreen()),
                                  );
                                },
                                child: Text(
                                  "Address",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartPaymentScreen()),
                                  );
                                },
                                child: Container(
                                  height: 23,
                                  width: 23,
                                  decoration: BoxDecoration(
                                      //color: darkGreenColor,
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartPaymentScreen()),
                                  );
                                },
                                child: Text(
                                  "Order",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height:size.height * 0.6,
                          child: GetBuilder<GetCartControllers>(
                      builder: (_) {
                        return GetCartListView(getCartDetails:getCartController.getCartDetails);
                      }
                    ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 10, right: 10, left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Obx(
                            () => Text(
                              "${getCartController.totalitem.value} Iterms",
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                color: Color(0xff016942),
                              ),
                              Obx(
                                () => Container(
                                  width: 70,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "${getCartController.totalPrice.value}",
                                      style: GoogleFonts.roboto(
                                        fontSize: 18.sp,
                                        color: Color(0xff016942),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          // Container(
                          //   height: 30,
                          //   width: 100.w,
                          //   child: Center(
                          //     child: Text(
                          //       "25 Points Saved",
                          //       style: GoogleFonts.roboto(
                          //         fontSize: 12.sp,
                          //         color: Color(0xff016942),
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ),
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       color: Color(0xffE4E4E4)),
                          // ),
                          
                          InkWell(
                            onTap: () {
                            
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CartAddresScreen()),
                              );
                            },
                            child: Container(
                              height: 35,
                              width: 140,
                              child: Center(
                                child: Text(
                                  "Delivery Address",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff016942)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
     
    );
  }
}
