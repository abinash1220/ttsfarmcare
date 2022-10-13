import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loading_screen.dart';

class SignUpSucessfully extends StatefulWidget {
  const SignUpSucessfully({super.key});

  @override
  State<SignUpSucessfully> createState() => _SignUpSucessfullyState();
}

class _SignUpSucessfullyState extends State<SignUpSucessfully> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 100.h),
            child: Center(
              child: Image(image: AssetImage("assets/images/Group 10.png")),
            ),
          ),
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
          SizedBox(height: 130.h,),
                InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoadingScreen()),
                          );
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
    );
  }
}