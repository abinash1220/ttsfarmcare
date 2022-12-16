import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/verify_otp_api_controllers/forgot_otp_verify_api_controller.dart';

import '../../constants/app_colors.dart';
import '../../controllers/sent_otp_api_controllers/forgot_password_otp_api_controller.dart';
import '../new_password_page/new_password.dart';

class VerificationCode extends StatefulWidget {
   String mobile_number;
   
   VerificationCode({super.key,required this.mobile_number});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {

final forgotOtpVerifyController = Get.find<ForgotOtpVerifyController>();

final forgotOtpController = Get.find<ForgotOtpController>();

 late String otp;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
         appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 120),
          child: InkWell(
            onTap: () {
            Get.back();
          },
            child: Image(
              image: AssetImage(
                "assets/icons/img.png",
              ),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 35),
          child: Center(
            child: Image(
             height: 200,
             image: AssetImage("assets/images/zxc.png",),),
          ),
        ),
          toolbarHeight: 200,
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
                      BorderRadius.only(bottomLeft: Radius.circular(70))),
            ),
          )),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bottom img.png"),
              fit: BoxFit.fill),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                //Obx (() =>( 
                 // Text(forgotOtpVerifyController.tempResponse.value,style: TextStyle(color: Colors.black),))),
                Text(
                      "Enter Verification code",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 29.sp),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Text("OTP Verification verifies Email Address/Mobile\n"
                                    "Number of users by sending OTP verification code\n"
                                    "during registration",
                               style: GoogleFonts.montserrat(fontSize: 13.sp),
                               textAlign:TextAlign.center,
                               ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 55.h,
                      child: OtpTextField(
                        numberOfFields: 4,
                        keyboardType: TextInputType.number,
                        filled: true,
                        fieldWidth: 50.w,
                        margin: EdgeInsets.only(left: 10,right: 20),
                        fillColor: darkGreenColor,
                        textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp
                  ),
                        borderWidth: 0,
                        showFieldAsBox: true, 
                        onCodeChanged: (String code) {
                        setState(() {
                            otp = code;
                        });
                     },
                       onSubmit: (String verificationCode){
                         setState(() {
                          otp = verificationCode;
                    });
                   }, 
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you didn't receive a code! ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp
                    ),),
                    InkWell(
                      onTap: () {
                       forgotOtpController.forgotOtpUser(mobile_number: widget.mobile_number);
                      },
                      child: Text(
                        "Resend",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(color:darkGreenColor,
                        fontSize: 15.sp,
                        decoration:TextDecoration.underline, 
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
                  onTap: () {
                    forgotOtpVerifyController.forgotOtpVerifyUser(mobile_number:widget.mobile_number, otp: otp);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const NewPasswordPage()),
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40,left: 40),
                    child: Container(
                      height: 50.h,
                      width:size.width,
                      child: Center(
                          child: Text(
                        "Verify",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                         // fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500
                        ),
                      )),
                      decoration: BoxDecoration(
                        color: const Color(0xff016942),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}