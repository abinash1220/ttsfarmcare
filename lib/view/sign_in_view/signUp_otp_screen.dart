import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/view/sign_in_view/signUp_sucessfully.dart';

import '../../constants/app_colors.dart';

class SignUpOtpScreen extends StatefulWidget {
  const SignUpOtpScreen({super.key});

  @override
  State<SignUpOtpScreen> createState() => _SignUpOtpScreenState();
}

class _SignUpOtpScreenState extends State<SignUpOtpScreen> {
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
                    padding: EdgeInsets.only(bottom: 70),
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image(image: AssetImage("assets/icons/img.png"))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50,right: 10),
                    child: Image(image: AssetImage("assets/images/Group 3473.png")),
                  ),
                  Container(
                    height: 1,
                  ),
            ],
          ),
          SizedBox(height: 15,),
          Text("OTP",
          style: TextStyle(color: Colors.white,fontSize: 18),
          ),
          SizedBox(height: 10,),
          Text("Please enter the OTP sent to your mobile number",
          style: TextStyle(color: Colors.white,fontSize: 14),
          ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 400,left: 10),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: OtpTextField(
                        numberOfFields: 4,
                        filled: true,
                        fieldWidth: 50,
                        margin: EdgeInsets.only(left: 10,right: 20),
                        fillColor: Color(0xffE4E4E4),
                        textStyle: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        
                        ),
                        borderWidth: 0,
                        showFieldAsBox: true, 
                        onCodeChanged: (String code) {
                        },
                       onSubmit: (String verificationCode){
                       
                      }, 
                      ),
                    ),
                    SizedBox(height: 50,),
                    Text("Didn't receive an OTP?",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    ),
                    SizedBox(height: 15,),
                    TextButton(
                            onPressed: () {},
                            child: Text(
                              "Resend OTP?",

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                decoration:TextDecoration.underline, 
                                
                              ),
                            ),
                          ),
                          SizedBox(height: 100,),
                InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUpSucessfully()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: Center(
                                child: Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
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