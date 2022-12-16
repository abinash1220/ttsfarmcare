import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/loading_screen/loader_screen.dart';
import 'package:ttsfarmcare/view/loading_screen/loading_screen.dart';
import 'package:ttsfarmcare/view/login_in_page/login_screen.dart';

import '../../controllers/profile_user_details_api_controllers/profile_user_controller.dart';
import '../landing_page/landing_screen.dart';
import 'loading_screen.dart';

class SignUpSucessfully extends StatefulWidget {
  const SignUpSucessfully({super.key});

  @override
  State<SignUpSucessfully> createState() => _SignUpSucessfullyState();
}


class _SignUpSucessfullyState extends State<SignUpSucessfully> {

  final  getProfileuser = Get.find<GetProfileControllers>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Image(
                    height: 170,width: 170,
                    image: AssetImage("assets/images/Group 10.png")),
                     SizedBox(height: 60.h,),
              Text("PHONE NUMBER REGISTERE",
              style: GoogleFonts.montserrat(fontSize: 15),
              ),
              SizedBox(height: 15.h,),
              Text("SUCCESSFULLY !",
              style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color(0xff517937)),
              ),
                ],
              ),
            ),
                  InkWell(
                          onTap: () {
                            if(getProfileuser.profileDetails.role == "Retail"){
                              Get.offAll(() => LoginScreen());
                            }else{
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoaderScreen()),
                            );
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: Container(
                              height: 50,
                              width: size.width,
                              child: Center(
                                  child: Text(
                                "Done",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              )),
                              decoration: BoxDecoration(
                                color: const Color(0xff016942),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
          ],
        ),
      ),
    );
  }
}