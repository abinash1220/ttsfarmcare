import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/customer_support_api_controllers/customer_support_api_%20controller.dart';
import 'package:ttsfarmcare/view/home_Screen/home_navigationbar.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';

import '../../constants/app_colors.dart';

class CustomerSupportScreen extends StatefulWidget {
  const CustomerSupportScreen({super.key});

  @override
  State<CustomerSupportScreen> createState() => _CustomerSupportScreenState();
}

class _CustomerSupportScreenState extends State<CustomerSupportScreen> {

  final customerSupportApiController = Get.find<CustomerSupportApiController>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
            appBar: AppBar(
        leading: InkWell(
          onTap: () {
          Get.back();
        },
          child: Icon(Icons.arrow_back,)
        ),
        title: Text("Customer Support",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
            ),
            titleSpacing: -10,
            actions: [
              //  Padding(
              //    padding: const EdgeInsets.only(right: 20),
              //    child: Image(
              //     height: 45,width: 45,
              //     image: AssetImage("assets/images/Group 3470.png")),
              //  ),
            ],
          toolbarHeight: 92,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            color: Colors.white,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xff289445),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40))),
            ),
          )),
          body: Container(
               decoration: BoxDecoration(
                color: Color(0xff289445),
        ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25))),
                  child:  KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
                      return Container(
                        height: size.height * 0.9,
                      width: size.width,
                        child: Padding(
                          padding:  EdgeInsets.only(top: 50 ,),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 60,right: 60),
                                 child: Container(
                height: 220.h,
                width:size.width,
                child: Image(
                              image:
                                  AssetImage("assets/image/invite (2).png"),
                                  fit: BoxFit.fill,),
              ),
                               ),
              SizedBox(height: 10.h,),
              Padding(
                                padding: const EdgeInsets.only(right: 25,left: 25),
                                child: Container(
                                  height: 50.h,
                                  width: size.width,
                                  child: TextFormField(
                                     controller:nameController,
                                    cursorColor: darkGreenColor,
                                     keyboardType: TextInputType.name,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp("[a-z A-Z]"))
                                        ],
                                    decoration: InputDecoration(
                                     focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "Enter name",
                                      hintStyle: GoogleFonts.montserrat(
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h,),
              Padding(
                                padding: const EdgeInsets.only(right: 25,left: 25),
                                child: Container(
                                  height: 50.h,
                                  width: size.width,
                                  child: TextFormField(
                                     controller: emailController,
                                    cursorColor: darkGreenColor,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                     focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "Email ID",
                                      hintStyle: GoogleFonts.montserrat(
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h,),
              Padding(
                                padding: const EdgeInsets.only(right: 25,left: 25),
                                child: Container(
                                  height: 100.h,
                                  width: size.width,
                                  child: TextFormField(
                                    maxLines: 500,
                                     controller: messageController,
                                    cursorColor: darkGreenColor,
                                    decoration: InputDecoration(
                                     focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                        ), 
                        isDense: true,
                                      hintText: "Message",
                                      hintStyle: GoogleFonts.montserrat(
                                          //color: const Color(0xff517937),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50,),
                              InkWell(
                                    onTap: (){
                                     if(
                                      nameController.text.isNotEmpty &&
                                      emailController.text.isNotEmpty &&
                                      messageController.text.isNotEmpty
                                     ){
                                      customerSupportApiController.CustomerSupport(
                                        name: nameController.text, 
                                        email: emailController.text, 
                                        message: messageController.text
                                        );
                                     }else{
                                       Get.snackbar("Please fill all the fields", "",
                                    snackPosition: SnackPosition.BOTTOM,
                                    colorText: Colors.white,
                                    backgroundColor: Colors.red);
                                     }
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 25,right: 25),
                                      child: Container(
                                        height: 50,
                                        width: size.width,
                                        child: Center(
                                          child: Text("Submit",
                                          style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.w500
                                          ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: darkGreenColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                   if(isKeyboardVisible)  Container(
                            height: 250,
                          ),
                            ]),
                        ),
                      );
                    }
                  ),
            ),
            ),
    );
  }
}