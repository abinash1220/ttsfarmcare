import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/sign_in_view/signUp_otp_screen.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({super.key});

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
     appBar: AppBar(
        leading: InkWell(
          onTap: () {
          Get.back();
        },
          child: Image(
            image: AssetImage(
              "assets/icons/img.png",
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
               Image(
                              image: AssetImage("assets/images/Group 3472.png"),height: 100,),
            SizedBox(height: 10,),
              Text(
                      "Mobile Number",
                      style: GoogleFonts.montserrat(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "We need to send OTP authenticate your number",
                      style: GoogleFonts.montserrat(color: Colors.white60, fontSize: 13),
                    ),
            ],
          ),
        ),
          toolbarHeight: 250,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            color: Colors.white,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/top img.png"),
                      fit: BoxFit.fill),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50))),
            ),
          )),
          body: Container(
            decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bottom img.png"),
              fit: BoxFit.fill),
        ),
            child:  KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
                return Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
                  child: Center(
                    child: Padding(
                      padding:  EdgeInsets.only(top:isKeyboardVisible? 5 : 50 ),
                      child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20,top: 60),
                    child: Container(
                  
                  height: 50,
                  width: size.width,
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffECF2F0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "India(+91)",
                        hintStyle: GoogleFonts.montserrat(
                          color: const Color(0xff517937),
                        ),
                      ),
                  ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                  height: 50,
                  width: size.width,
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffECF2F0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Mobile Number",
                        hintStyle: GoogleFonts.montserrat(
                          color: const Color(0xff517937),
                        ),
                      ),
                  ),
                    ),
                  ),
                 SizedBox(height: 120,),
                   InkWell(
                     onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                           builder: (context) => const SignUpOtpScreen()),
                   );
                     },
                     child: Padding(
                   padding: const EdgeInsets.only(left: 20, right: 20),
                   child: Container(
                     height: 50,
                     width: size.width,
                     child: Center(
                           child: Text(
                         "Next",
                         style: GoogleFonts.montserrat(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
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
         
                  ),
                );
              }
            ),
            ),
    );
  }
}