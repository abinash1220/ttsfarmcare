import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/sign_in_view/signUp_otp_screen.dart';

class SignUpMobNumber extends StatefulWidget {
  const SignUpMobNumber({super.key});

  @override
  State<SignUpMobNumber> createState() => _SignUpMobNumberState();
}

class _SignUpMobNumberState extends State<SignUpMobNumber> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                child: Image(
                  image: AssetImage("assets/images/Group 3471.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child:
                              Image(image: AssetImage("assets/icons/img.png"))),
                      Padding(
                        padding: EdgeInsets.only(top: 45),
                        child: Image(
                            image: AssetImage("assets/images/Group 3472.png"),height: 100,),
                      ),
                      Container(
                        height: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
            ],
          ),

           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      hintText: "India(+91)",
                      hintStyle: GoogleFonts.montserrat(
                        color: const Color(0xff517937),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: InkWell(
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
          ),
        ],
      ),
      
    );
  }
}
