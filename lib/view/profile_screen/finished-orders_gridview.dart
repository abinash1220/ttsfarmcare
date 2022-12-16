import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/complete_model_screen.dart';

class FinishedOrdersGridview extends StatefulWidget {
  List<FinishOrderData> completeorder;

   FinishedOrdersGridview({super.key, required this.completeorder});

  @override
  State<FinishedOrdersGridview> createState() => _FinishedOrdersGridviewState();
}

class _FinishedOrdersGridviewState extends State<FinishedOrdersGridview> {
  
   bool isCheked = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2.76, mainAxisSpacing: 10),
          itemCount: widget.completeorder.length,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image(
                    height: 100,
                      width: 40,
                    image: NetworkImage(widget.completeorder[index].product.image1)),
                ),
                SizedBox(
                  width: 10,
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
                          width: size.width * 0.5,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.completeorder[index].product.name,
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Color(0xff1C1C1E)),
                              ),
                              Text(
                                "Rating",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Color(0xff515C6F)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 3,),
                        Image(
                          width: 45,
                          height: 30,
                            image:
                                AssetImage("assets/image/Group 3369.png")),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.completeorder[index].product.title,
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1C1C1E)),
                          ),
                          Text(
                            "RS ${widget.completeorder[index].amount}",
                            style: GoogleFonts.poppins(
                                fontSize: 13, color: Color(0xff0D8446),
                                fontWeight: FontWeight.w600
                                ),
                          ),
                          Container(
                            width: size.width * 0.7,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                 "Qty:  ${widget.completeorder[index].quantity}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Color(0xff1C1C1E)),
                                ),
                                Text(
                                  widget.completeorder[index].status,
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Color(0xff0D8446),
                                      fontWeight: FontWeight.w500
                                      ),
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
                border: Border.all(color: Color(0xff686868)),
                color: Color.fromARGB(255, 245, 244, 244),
              ),
            );
          }
      )
    );
  }
}