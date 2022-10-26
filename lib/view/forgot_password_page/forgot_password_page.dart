import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/forgot_password_page/verification_code_screen.dart';

import '../../constants/app_colors.dart';
import '../home_Screen/test_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
            padding: const EdgeInsets.only(left: 10,top: 0),
            child: Column(
              children: [
                Text(
                    "Forgot Password",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        
                        fontSize: 35),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Text("Forgot password? Reset password in two quick steps.\n"
                             "Email or Phone. Reset password. or. Back",
                             style: GoogleFonts.montserrat(fontSize: 13),
                             textAlign:TextAlign.center,
                             ),
                  ),
                  SizedBox(height: 35,),
                  Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    height: 50,
                    width: size.width,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: darkGreenColor,
                      decoration: InputDecoration(
                         filled: true,
                          fillColor: Color(0xffECF2F0),
                          isDense: true,
                       focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xff517937),width:0.7)
                        ), 
                        hintText: "Enter Email / Phone Number",
                        hintStyle: GoogleFonts.montserrat(
                          color: const Color(0xff517937),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const VerificationCode()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20),
                    child: Container(
                      height: 50,
                      width:size.width,
                      child: Center(
                          child: Text(
                        "Send OTP",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                      decoration: BoxDecoration(
                        color: const Color(0xff016942),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: 60,),
              //   Text("Or",
              //   textAlign: TextAlign.center,
              //   style: GoogleFonts.poppins(
              //     color: Color(0xff016942),
              //     fontSize: 20),),
              //   SizedBox(height: 30,),
              //   Padding(
              //     padding: const EdgeInsets.only(left: 35,right: 35),
              //     child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Image.asset("assets/images/google.png"),
              //       Image.asset("assets/images/facebook.png"),
              //       Image.asset("assets/images/twitter.png"),
              //     ],
              // ),
              //   ),
              SizedBox(
                height: 25
              ),
              Text("Don't have an account?",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(color:Color(0xffb0D8446),
              fontSize: 16,
              ),
              ),
              SizedBox(
                height: 25
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ExamsView()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30,left: 30),
                    child: Container(
                      height: 50,
                      width:size.width,
                      child: Center(
                          child: Text(
                        "Sign Up?",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff016942),
                          fontSize: 19,
                        ),
                      )),
                      decoration: BoxDecoration(
                      border: Border.all(color:darkGreenColor),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
              ]),
        ),
      ),
    );
  }
}