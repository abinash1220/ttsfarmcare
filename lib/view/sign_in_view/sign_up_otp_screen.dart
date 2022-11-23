import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/sign_in_view/signUp_sucessfully.dart';

import '../../controllers/sent_otp_api_controllers/sent_otp_api_controller.dart';
import '../../controllers/verify_otp_api_controllers/verify_otp_api_controller.dart';

class SignUpOtp extends StatefulWidget {
  String mobile_number;

  SignUpOtp({
    required this.mobile_number,
  });
 
  @override
  State<SignUpOtp> createState() => _SignUpOtpState();
}

class _SignUpOtpState extends State<SignUpOtp> {

  final sendOtpController = Get.find<SentOtpController>();


 final verifyOtpController = Get.find<VerifyOtpController>();

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
          padding: const EdgeInsets.only(right: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image(
                                image: AssetImage("assets/images/Group 3473.png"),height: 100,),
              SizedBox(height: 10,),
                Text(
                        "OTP",
                        style: GoogleFonts.montserrat(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Please enter the OTP sent to your mobile number",
                        style: GoogleFonts.montserrat(color: Colors.white, fontSize: 13),
                      ),
              ],
            ),
          ),
        ),
          toolbarHeight: 248,
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
                         padding: const EdgeInsets.only(top: 20),
                         child: Column(
            children: [
              Container(
                height: 55,
                child: OtpTextField(
                  keyboardType: TextInputType.number,
                  numberOfFields: 4,
                  filled: true,
                  fieldWidth: 50,
                  margin: EdgeInsets.only(left: 10, right: 20),
                  fillColor: Color(0xffE4E4E4),
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  borderWidth: 0,
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {
                    setState(() {
                      otp = code;
                    });
                  },
                  onSubmit: (String verificationCode) {
                    setState(() {
                      otp = verificationCode;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Didn't receive an OTP?",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {
                    sendOtpController.sentOtpUser(mobile_number: widget.mobile_number);
                },
                child: Text(
                  "Resend OTP?",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              
            
            ],
          ),
                       ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: InkWell(
              onTap: () {
               verifyOtpController.verifyOtpUser(mobile_number:widget.mobile_number, otp: otp);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 50,
                  width: size.width,
                  child: Center(
                      child: Text(
                    "Submit",
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
            ),
                  ]),
            ),
          ),
    );
  }
}