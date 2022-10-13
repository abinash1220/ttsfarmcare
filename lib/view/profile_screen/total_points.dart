import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';

class TotalPoint extends StatefulWidget {
  const TotalPoint({super.key});

  @override
  State<TotalPoint> createState() => _TotalPointState();
}

class _TotalPointState extends State<TotalPoint> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        return Container(
          child: Column(
            children: [
              Container(
                height: constraints.maxHeight > 600
                    ? size.height * 0.2
                    : size.height * 0.3,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                       
                      child: Image(
                        image: AssetImage("assets/images/Group 3361.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Total Points",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              
                            ],
                          ),
                          Image(
                                  image:
                                      AssetImage("assets/images/Group 3466.png")),

                             
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
               Image(
                       image:
                        AssetImage("assets/image/Group 3464.png"),
                        fit: BoxFit.fill,
                        ),
                        SizedBox(height: 10,),
                         Text(
                                "Points Earned",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
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
                                  fontSize: 13,
                                  color: Color(0xff2D3130),
                                  
                                ),
                              ),
                              SizedBox(height: 15,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(
                                  "Order Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 25,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "25 Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    color: Color(0xff016942),
                                    
                                  ),
                                ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(
                                  "Refer Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 25,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "50 Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    color: Color(0xff016942),
                                    
                                  ),
                                ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(
                                  "Total Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 25,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "75 Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    color: Color(0xff016942),
                                    
                                  ),
                                ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(
                                  "100 Points",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 25,
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
                                    fontSize: 20,
                                    color: Color(0xff016942),
                                    
                                  ),
                                ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(height: 30,),
                              InkWell(
                            onTap: (){
                              // Navigator.push(
                              //            context,
                              //            MaterialPageRoute(builder: (context) => const ProfileScreen()),
                              //          );
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
                                    fontSize: 25,
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

            ]),

        );
      }),
    );
  }
}