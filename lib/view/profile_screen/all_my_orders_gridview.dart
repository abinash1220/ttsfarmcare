import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../constants/app_colors.dart';
import '../../models/order_history.dart';
import '../../models/order_history_model.dart';

class AllMyOrdersGridview extends StatefulWidget {
  List<OrderData> orderdata;

  AllMyOrdersGridview({super.key, required this.orderdata});

  @override
  State<AllMyOrdersGridview> createState() => _AllMyOrdersGridviewState();
}

class _AllMyOrdersGridviewState extends State<AllMyOrdersGridview> {
  @override
  Widget build(BuildContext context) {
    print(widget.orderdata.length);
    return Container(
      child:widget.orderdata.isEmpty? Center(child: Text("No data available")) : GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2.76, mainAxisSpacing: 10),
          itemCount: widget.orderdata.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Column(
                          children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: NetworkImage(widget.orderdata[index].product.image1),
                            height: 70,
                            width: 65,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.orderdata[index].product.name,
                                style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  color: const Color(0xff515C6F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                               timeago.format(DateTime.parse(widget.orderdata[index].product.createdAt.toString())),
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: const Color(0xff515C6F),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                widget.orderdata[index].status,
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: darkGreenColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Text(
                              "Rating",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: const Color(0xff7D7979),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffD7A221),
                              size: 11,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffD7A221),
                              size: 11,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffD7A221),
                              size: 11,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffD7A221),
                              size: 11,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffD7A221),
                              size: 11,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              )
                          ]
            ));
          }),
    );
  }
}
