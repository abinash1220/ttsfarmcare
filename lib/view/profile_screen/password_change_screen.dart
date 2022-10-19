import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';

import '../../constants/app_colors.dart';

class PasswordChangeScreen extends StatefulWidget {
  const PasswordChangeScreen({super.key});

  @override
  State<PasswordChangeScreen> createState() => _PasswordChangeScreenState();
}

class _PasswordChangeScreenState extends State<PasswordChangeScreen> {

  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
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
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
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
                            // controller: passwordcontroller,
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
                          height: 50,
                          width: size.width,
                          child: TextFormField(
                            obscureText: _isHidden,
                            // controller: passwordcontroller,
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
                SizedBox(height: 20,),
                Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                        
                                        "Confirm new password",
                                        style: GoogleFonts.poppins(
                                          fontSize: 23,
                                          color: Color(0xff515C6F),
                                          fontWeight: FontWeight.w500,
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
                            // controller: passwordcontroller,
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
                              hintStyle: TextStyle(
                              ),
                            ),
                          ),
                        ),
                ),
                 SizedBox(height: 90,),
                            InkWell(
                                  onTap: (){
                                    Navigator.push(
                                               context,
                                               MaterialPageRoute(builder: (context) => const ProfilePage()),
                                             );
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
                                    // Navigator.push(
                                    //            context,
                                    //            MaterialPageRoute(builder: (context) => const PaymentSucessfully()),
                                    //          );
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
                      );
                    }
                  ),
            ),
            ),
    );
  }
}