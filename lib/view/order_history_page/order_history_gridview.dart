import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/profile_user_details_api_controllers/profile_user_controller.dart';

import '../../models/order_history_model.dart';

class OrderHistoryGridview extends StatefulWidget {
  List<OrderData> orderdata;

  OrderHistoryGridview({super.key, required this.orderdata});

  @override
  State<OrderHistoryGridview> createState() => _OrderHistoryGridviewState();
}

class _OrderHistoryGridviewState extends State<OrderHistoryGridview> {
  @override
  Widget build(BuildContext context) {
    print(widget.orderdata.length);
    return Container(
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2.76, mainAxisSpacing: 10),
          itemCount: widget.orderdata.length,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image(image: AssetImage("assets/image/aa.png")),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 100,
                    width: 1,
                    color: Color(0xff686868),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.orderdata[index].product.name,
                          style: GoogleFonts.montserrat(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              Get.find<GetProfileControllers>()
                                          .profileDetails
                                          .role ==
                                      "Retail"
                                  ? widget
                                      .orderdata[index].product.priceRetailer
                                  : widget
                                      .orderdata[index].product.priceCustomer,
                              style: GoogleFonts.roboto(
                                fontSize: 17,
                                //fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            Text(
                              widget.orderdata[index].product.shortDescription,
                              style: GoogleFonts.montserrat(
                                fontSize: 17,
                                //fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RatingBar.builder(
                          initialRating: double.parse(
                              widget.orderdata[index].product.rating ?? "0"),
                          minRating: 0,
                          itemSize: 20,
                          glow: false,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          updateOnDrag: false,
                          ignoreGestures: true,
                          tapOnlyMode: false,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            //print(rating);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff686868)),
                color: Color.fromARGB(255, 247, 244, 244),
              ),
            );
          }),
    );
  }
}
