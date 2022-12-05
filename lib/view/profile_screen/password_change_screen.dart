import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/controllers/change_password_api_controllers/reset_password_api_controller.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';

import '../../constants/app_colors.dart';

class PasswordChangeScreen extends StatefulWidget {
  const PasswordChangeScreen({super.key});

  @override
  State<PasswordChangeScreen> createState() => _PasswordChangeScreenState();
}

class _PasswordChangeScreenState extends State<PasswordChangeScreen> {

  bool _isHidden = true;
  bool _isHidden1 = true;
  bool _isHidden2 = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _togglePasswordView1() {
    setState(() {
      _isHidden1 = !_isHidden1;
    });
  }

  void _togglePasswordView2() {
    setState(() {
      _isHidden2 = !_isHidden2;
    });
  }

  final resetPasswordApiController = Get.find<ResetPasswordApiController>();

  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  
  bool iscurrentPwd = true;
  bool isnewPwd = true;
  bool isconfirmPwd = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPasswordController.addListener(validateCurrentPwd);
    newPasswordController.addListener(validateNewPwd);
    confirmPasswordController.addListener(validateConfirmPwd);
  }

  validateCurrentPwd (){
     if(currentPasswordController.text.length > 7){
         setState(() {
           iscurrentPwd = true;
         });
     }else{
         setState(() {
           iscurrentPwd = false;
         });
     }
  }

  validateNewPwd (){
    if(newPasswordController.text.length > 7){
         setState(() {
           isnewPwd = true;
         });
     }else{
         setState(() {
           isnewPwd = false;
         });
     }
  }

  validateConfirmPwd (){
    if(confirmPasswordController.text.length > 7){
         setState(() {
           isconfirmPwd = true;
         });
     }else{
         setState(() {
           isconfirmPwd = false;
         });
     }
  }

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
       title: Text("Password Change",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
            ),
            titleSpacing: -10,
            actions: [
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Image(
                  height: 45,width: 45,
                  image: AssetImage("assets/images/Group 3470.png")),
               ),
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
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
                  child: KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
                      return Container(
                         height: size.height * 0.9,
                      width: size.width,
                        child: ListView(
                         shrinkWrap: true,
                          children: [
                            SizedBox(height: 20,),
                            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                        
                                        "Current password",
                                        style: GoogleFonts.poppins(
                                          fontSize: 23,
                                          color: Color(0xff515C6F),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                                   "(leave blank to leave unchanged)",
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          color: Color(0xff515C6F),
                                        ),
                                      ),
              ),
              SizedBox(height: 10,),
              Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 50,
                          width: size.width,
                          child: TextFormField(
                            obscureText: _isHidden,
                             controller: currentPasswordController,
                            cursorColor: darkGreenColor,
                            decoration: InputDecoration(
                               focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                        ), 
                        isDense: true,
                              suffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  _isHidden ? Icons.visibility_off : Icons.visibility,
                                 color: Color(0xff000000),
                                ),
                              ),
                              hintStyle: GoogleFonts.poppins(
                              ),
                            ),
                          ),
                        ),
                ),
               if (iscurrentPwd == false)Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("password must be 8 characters",
                  style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(height: 20,),
                 Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                        
                                        "New password",
                                        style: GoogleFonts.poppins(
                                          fontSize: 23,
                                          color: Color(0xff515C6F),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                                   "(leave blank to leave unchanged)",
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          color: Color(0xff515C6F),
                                        ),
                                      ),
              ),
              SizedBox(height: 10,),
              Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 50.h,
                          width: size.width,
                          child: TextFormField(
                            obscureText: _isHidden1,
                            controller: newPasswordController,
                            cursorColor: darkGreenColor,
                            decoration: InputDecoration(
                             focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                        ), 
                        isDense: true,
                              suffixIcon: InkWell(
                                onTap: _togglePasswordView1,
                                child: Icon(
                                  _isHidden1 ? Icons.visibility_off : Icons.visibility,
                                 color: Color(0xff000000),
                                ),
                              ),
                              hintStyle: GoogleFonts.poppins(
                              ),
                            ),
                          ),
                        ),
                ),
                if (isnewPwd == false)Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("password must be 8 characters",
                  style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                        
                                        "Confirm new password",
                                        style: GoogleFonts.poppins(
                                          fontSize: 23.sp,
                                          color: Color(0xff515C6F),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
              ),
              
              SizedBox(height: 10,),
              Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 50.h,
                          width: size.width,
                          child: TextFormField(
                            obscureText: _isHidden2,
                            controller: confirmPasswordController,
                            validator: ((value) {
                              if(value!.length < 8){
                                return "must 8 characters";

                              }
                            }),
                            cursorColor: darkGreenColor,
                            decoration: InputDecoration(
                             focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xff515C6F),width:0.9),
                        ), 
                        isDense: true,
                              suffixIcon: InkWell(
                                onTap: _togglePasswordView2,
                                child: Icon(
                                  _isHidden2 ? Icons.visibility_off : Icons.visibility,
                                 color: Color(0xff000000),
                                ),
                              ),
                              hintStyle: TextStyle(
                              ),
                            ),
                          ),
                        ),
                ),
                if (isconfirmPwd == false)Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("password must be 8 characters",
                  style: TextStyle(color: Colors.red),
                  ),
                ),
                 SizedBox(height: 90.h,),
                            InkWell(
                                  onTap: (){
                                   if(
                                    currentPasswordController.text.isNotEmpty &&
                                    newPasswordController.text.isNotEmpty &&
                                    confirmPasswordController.text.isNotEmpty
                                   ){
                                    if (iscurrentPwd && isconfirmPwd && isnewPwd) {
                                      if(newPasswordController.text == confirmPasswordController.text){
                                     resetPasswordApiController.resetpassword(
                                     original_password: currentPasswordController.text, 
                                    new_password: newPasswordController.text, 
                                    confirm_password: confirmPasswordController.text);
                                   }else{
                                    Get.snackbar("New password and confirm password does not match", "",
                                    snackPosition: SnackPosition.BOTTOM,
                                    colorText: Colors.white,
                                    backgroundColor: Colors.red);
                                   }
                                   }
                                   }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 35,right: 35),
                                    child: Container(
                                      height: 50,
                                      width: size.width,
                                      child: Center(
                                        child: Text("Save Changes",
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400
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
                                SizedBox(height: 20,),
                            InkWell(
                                  onTap: (){
                                    Get.back();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 35,right: 35),
                                    child: Container(
                                      height: 50,
                                      width: size.width,
                                      child: Center(
                                        child: Text("Cancel",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff515C6F),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400
                                        ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff3F3F3F),),
                                        borderRadius: BorderRadius.circular(10),
                                        //color: darkGreenColor,
                                      ),
                                    ),
                                  ),
                                ),
                                if(isKeyboardVisible)  Container(
                            height: 200,)
                          ]
                          ),
                          //
                      );
                    }
                  ),
            ),
            ),
    );
  }
}