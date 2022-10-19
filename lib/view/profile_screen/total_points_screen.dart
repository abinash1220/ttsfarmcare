import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';

import '../../constants/app_colors.dart';

class TotalPointsScreen extends StatefulWidget {
  const TotalPointsScreen({super.key});

  @override
  State<TotalPointsScreen> createState() => _TotalPointsScreenState();
}

class _TotalPointsScreenState extends State<TotalPointsScreen> {
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
        title: Text("Total Points",
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
                      Image(
                       image:
                        AssetImage("assets/image/Group 3464.png"),
                        fit: BoxFit.fill,
                        ),
                        SizedBox(height: 10,),
                         Text(
                                "Points Earned",
                                style: GoogleFonts.montserrat(
                                  fontSize: 23,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            SizedBox(height: 10,),
                            Text(
                                "     TTS FARM CARE Points and Rewards allows you\n"
                                "       to reward customers for purchases and other\n"
                                "actions with points that can be redeemed for discounts.",
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color: Color(0xff2D3130),
                                  
                                ),
                              ),
                              SizedBox(height: 15,),
                              Padding(
                                padding: const EdgeInsets.only(left: 14,right: 14),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(
                                  "Order Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 22,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "25 Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    color: Color(0xff016942),
                                    
                                  ),
                                ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14,right: 14),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(
                                  "Refer Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 22,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "50 Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    color: Color(0xff016942),
                                    
                                  ),
                                ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14,right: 14),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(
                                  "Total Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 22,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "75 Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    color: Color(0xff016942),
                                    
                                  ),
                                ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14,right: 14),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(
                                  "100 Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 22,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Icon(Icons.currency_rupee,
                                // color: Color(0xff016942),
                                // ),
                                Text(
                                  "₹ 01 Rupee",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    color: Color(0xff016942),
                                    
                                  ),
                                ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14,right: 14),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(height: 30,),
                              InkWell(
                            onTap: (){
                              Navigator.push(
                                         context,
                                         MaterialPageRoute(builder: (context) => const ProfilePage()),
                                       );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 35,right: 35),
                              child: Container(
                                height: 50,
                                width: size.width,
                                child: Center(
                                  child: Text("Get Orders",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w400
                                  ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: darkGreenColor,
                                ),
                              ),
                            ),
                          ),
                    ]
                    ),
            ),
            ),
    );
  }
}