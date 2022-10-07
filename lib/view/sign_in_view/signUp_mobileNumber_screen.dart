import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
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
      body: Stack(
        children: [
          Container(
              width: size.width,
              // height: size.height * 0.35,
              child: Image(
                image: AssetImage("assets/images/Group 3471.png"),
                fit: BoxFit.fill,
              )
              ),
              Column(
                children: [
                  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 70,right: 10),
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image(image: AssetImage("assets/icons/img.png"))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Image(image: AssetImage("assets/images/Group 3472.png")),
                  ),
                  Container(
                    height: 1,
                  ),
            ],
          ),
          SizedBox(height: 15,),
          Text("Mobile Number",
          style: TextStyle(color: Colors.white,fontSize: 18),
          ),
          SizedBox(height: 10,),
          Text("We need to send OTP authenticate your number",
          style: TextStyle(color: Colors.white,fontSize: 14),
          ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 410,left: 10),
                child: Column(
                  children: [
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
                        hintText: "India(+91)",
                        hintStyle: TextStyle(
                          color: const Color(0xff517937),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
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
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(
                          color: const Color(0xff517937),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUpOtpScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: Center(
                                child: Text(
                              "Next",
                              style: TextStyle(
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
          
        ],
      ),

    );
  }
}