import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/oreder_history_api_controllers/add_quantity_api_controller.dart';
import 'package:ttsfarmcare/controllers/profile_user_details_api_controllers/profile_user_controller.dart';

import '../../constants/app_colors.dart';
import '../../controllers/add_to_cart_api_controllers/get_cart_api_controller.dart';
import '../../controllers/view_cart_controller.dart';
import '../../models/get_cart_details_model.dart';
import '../../models/get_cart_model.dart';

class GetCartListView extends StatefulWidget {
  List<Cartdetail> getCartDetails;

  GetCartListView({super.key, required this.getCartDetails});

  @override
  State<GetCartListView> createState() => _GetCartListViewState();
}

class _GetCartListViewState extends State<GetCartListView> {
  final ViewCartController c = Get.find<ViewCartController>();

  final addQuantityController = Get.find<AddQuantityController>();

  final getCartController = Get.find<GetCartControllers>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        child:widget.getCartDetails.isEmpty? Center(child: Text("Your cart is empty")) : ListView.builder(
            itemCount: widget.getCartDetails.length,
            itemBuilder: ((context, index) {
              return widget.getCartDetails[index].product.name == "null" ? Container() : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10,),
                    child: Container(
                      height: 150,
                      width: 390,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 130,
                            width: 60,
                            child: Image(
                              image: NetworkImage(widget.getCartDetails[index].product.image1),
                             
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.getCartDetails[index].product.name,
                                //textAlign: TextAlign.start,
                                style: GoogleFonts.montserrat(
                                  fontSize: 18.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                widget.getCartDetails[index].quantity,
                                style: GoogleFonts.roboto(
                                  fontSize: 19.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  // Icon(Icons.currency_rupee),
                                  Text(
                                    "???569.00",
                                    style: GoogleFonts.roboto(
                                        fontSize: 19.sp,
                                        color:
                                            Color.fromARGB(255, 105, 104, 104),
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    alignment: Alignment.centerLeft,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text("??? ${getCartController.getPrice(widget.getCartDetails[index].price, widget.getCartDetails[index].no_of_item)}",
                                        style: GoogleFonts.roboto(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    width: size.width * 0.51,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.end,
                                      children: [
                                        // Text(
                                        //   "25 Points",
                                        //   style: GoogleFonts.roboto(
                                        //     fontSize: 13.sp,
                                        //     color: Color(0xffF9A20D),
                                        //     fontWeight: FontWeight.w500,
                                        //   ),
                                        // ),
                                        Container(
                                          height: 30,
                                          width: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    int q = int.parse(widget.getCartDetails[index].no_of_item);
                                                    if (q == 1) {
                                                      getCartController
                                                          .removeFromCart(widget.getCartDetails[index].id.toString());
                                                      getCartController.getCart();
                                                      getCartController.update();
                                                    } else {
                                                      int totalquantity = q - 1;
                                                      setState(() {
                                                        widget
                                                                .getCartDetails[
                                                                    index]
                                                                .no_of_item =
                                                            totalquantity
                                                                .toString();
                                                      });
                                                      addQuantityController
                                                          .addQuantyval(
                                                              cart_id: widget.getCartDetails[index].id.toString(),
                                                              no_of_item:totalquantity.toString(),
                                                              price: widget.getCartDetails[index].price.toString(), 
                                                              );
                                                      getCartController
                                                          .calculate(widget
                                                              .getCartDetails);
                                                    }
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Icon(
                                                      Icons.remove,
                                                      size: 17,
                                                      color: Color(0xff016942),
                                                    ),
                                                  )),
                                              Container(
                                                height: 30,
                                                width: 35,
                                                child: Center(
                                                  child: Text(
                                                    "${widget.getCartDetails[index].no_of_item}",
                                                    style: GoogleFonts.roboto(
                                                      color: darkGreenColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  border: Border.symmetric(
                                                      vertical: BorderSide(
                                                          color: Color(
                                                              0xff016942))),
                                                ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    int q = int.parse(widget
                                                        .getCartDetails[index]
                                                        .no_of_item);
                                                    int totalquantity = q + 1;
                                                    setState(() {
                                                      widget
                                                              .getCartDetails[index]
                                                              .no_of_item =
                                                          totalquantity
                                                              .toString();
                                                    });
                                                    addQuantityController
                                                        .addQuantyval(
                                                            cart_id: widget.getCartDetails[index].id.toString(),
                                                            no_of_item:totalquantity.toString(),
                                                            price: widget.getCartDetails[index].price.toString(),
                                                                    );
                                                    getCartController.calculate(
                                                        widget.getCartDetails);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 17,
                                                      color: Color(0xff016942),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff016942)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff707070)),
                        color: Color.fromARGB(255, 236, 235, 235),
                      ),
                    ),
                  ),
                ],
              );
            })));
  }
}
