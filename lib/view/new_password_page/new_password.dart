import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/change_password_api_controllers/forgot_pwd_change_api_controller.dart';

import '../../constants/app_colors.dart';
import 'new_password_successfully_screen.dart';

class NewPasswordPage extends StatefulWidget {

  int id;

  NewPasswordPage({super.key,required this.id});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  
  final forgotPwdchangeApiController = Get.find<ForgotPwdchangeApiController>();
 
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  
  bool isnewpassword = true;
  bool isconpassword = true;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newPasswordController.addListener(validatenewPwd);
    confirmPasswordController.addListener(validatCPwd);
  }

  validatenewPwd(){
   if(newPasswordController.text.length > 7){
         setState(() {
           isnewpassword = true;
         });
   }else{
     setState(() {
       isnewpassword = false;
     });
   }
  }

   validatCPwd(){
   if(confirmPasswordController.text.length > 7){
         setState(() {
           isconpassword = true;
         });
   }else{
     setState(() {
       isconpassword = false;
     });
   }
  }

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
        child:KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
                return Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
                  child: Center(
                    child: ListView(
                     shrinkWrap: true,
                children: [
                        
                         Center(
                           child: Text(
                  "New Password",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 35.sp),
                ),
                         ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "A password reset is for when you forget your password.\n"
                    "A password change is for when you remember\n"
                    "the old password,but you want a new one.",
                    style: GoogleFonts.montserrat(fontSize: 13.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35, left: 35),
                  child: Container(
                    height: 50,
                    width: size.width,
                    child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: darkGreenColor,
                    controller: newPasswordController,
                    decoration: InputDecoration(
                     focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xff016942),width:0.7)
                        ), 
                      hintText: "Enter New Password",
                      isDense: true,
                      hintStyle: GoogleFonts.poppins(
                        color: const Color(0xff292724),
                      ),
                    ),
                    ),
                  ),
                ),
                 if (isnewpassword == false)Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text("password must be 8 characters",
                        style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("8 Symbls at least",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.poppins(),
                    ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35, left: 35),
                  child: Container(
                    height: 50,
                    width: size.width,
                    child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: darkGreenColor,
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Color(0xff016942),width:0.7)
                        ), 
                      hintText: "Confirm Password",
                      isDense: true,
                      hintStyle: GoogleFonts.poppins(
                        color: const Color(0xff292724),
                      ),
                    ),
                    ),
                  ),
                ),
                if (isconpassword == false)Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text("password must be 8 characters",
                        style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                   if(newPasswordController.text.isNotEmpty &&
                      confirmPasswordController.text.isNotEmpty){
                        if (isnewpassword && isconpassword) {
                        forgotPwdchangeApiController.forgotPwdApiUser(
                        user_id: widget.id.toString(),
                        password: newPasswordController.text,
                        new_password: confirmPasswordController.text);
}
                      } else {
                              Get.snackbar("Please fill all the fields", "",
                                  snackPosition: SnackPosition.BOTTOM,
                                  colorText: Colors.white,
                                  backgroundColor: Colors.red);
                            }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: Container(
                    height: 50,
                    width: size.width,
                    child: Center(
                        child: Text(
                      "Submit",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                      ),
                    )),
                    decoration: BoxDecoration(
                      color: const Color(0xff016942),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    ),
                  ),
                ),
                if(isKeyboardVisible)  Container(
                          height: 200,
                        ),
              
                      ],
                    ),
                  ),
                );
              }
            ),
          ),
    );
  }
}