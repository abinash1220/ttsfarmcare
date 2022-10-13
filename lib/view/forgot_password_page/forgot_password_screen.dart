import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/forgot_password_page/verication_code_page.dart';
import 'package:ttsfarmcare/view/sign_in_view/test_sign_up.dart';

import '../landing_page/landing_screen.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
            padding: const EdgeInsets.only(top: 310,left: 10),
            child: Column(
              children: [
                Text(
                    "Forgot Password",
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
                  SizedBox(height: 25,),
                  Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    height: 50,
                    width: size.width,
                    child: TextFormField(
                      decoration: InputDecoration(
                         filled: true,
                          fillColor: Color(0xffECF2F0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Enter Email / Phone Number",
                        hintStyle: GoogleFonts.montserrat(
                          color: const Color(0xff517937),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const VerificationCodeScreen()),
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
                SizedBox(height: 20,),
                Text("Or",style: GoogleFonts.poppins(color: Color(0xff016942),fontSize: 20),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/google.png"),
                    Image.asset("assets/images/facebook.png"),
                    Image.asset("assets/images/twitter.png"),
                  ],
              ),
                ),
              SizedBox(
                height: 15
              ),
              Text("Don't have an account?",style: GoogleFonts.poppins(color:Color(0xffb0D8446),
              fontSize: 16,
              ),
              ),
              SizedBox(height: 25,),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpTestView()),
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
          ],
      ),
    );
  }
}