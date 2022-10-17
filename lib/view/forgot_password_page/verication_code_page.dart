import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';

import '../landing_page/landing_screen.dart';
import '../new_password_page/new_password.dart';
import '../new_password_page/new_password_screen.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
              width: size.width,
              // height: size.height * 0.35,
              child: Image(
                image: AssetImage("assets/images/3453.png"),
                fit: BoxFit.fill,
              )
              ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 80),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LandingScreen()),
                    );
                  },
                  child: Image(image: AssetImage("assets/icons/img.png"))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Image(image: AssetImage("assets/images/zxc.png")),
              ),
              Container(
                height: 1,
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 310,left: 15),
            child: Column(
              children: [
                Text(
                      "Enter Verification code",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          
                          fontSize: 29),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Text("OTP Verification verifies Email Address/Mobile\n"
                                    "Number of users by sending OTP verification code\n"
                                    "during registration",
                               style: GoogleFonts.montserrat(fontSize: 13),
                               textAlign:TextAlign.center,
                               ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                     
                      child: OtpTextField(
                        numberOfFields: 4,
                        keyboardType: TextInputType.number,
                        filled: true,
                        fieldWidth: 50,
                        margin: EdgeInsets.only(left: 10,right: 20),
                        fillColor: darkGreenColor,
                        textStyle: GoogleFonts.poppins(color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                        borderWidth: 0,
                        showFieldAsBox: true, 
                        onCodeChanged: (String code) {
                        },
                       onSubmit: (String verificationCode){
                       
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
                      fontSize: 15
                    ),),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Resend",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(color:darkGreenColor,
                        fontSize: 15,
                        decoration:TextDecoration.underline, 
                        ),
                        
                      ),
                    ),
                  ],
                ),
                    SizedBox(height: 130,),
                    InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewPasswordPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40,left: 40),
                    child: Container(
                      height: 50,
                      width:size.width,
                      child: Center(
                          child: Text(
                        "Verify",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                         // fontWeight: FontWeight.bold,
                          fontSize: 18,
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
              ],
            ),
          ),
        ],
      ),

    );
  }
}