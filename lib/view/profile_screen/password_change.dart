import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({super.key});

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {

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
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: constraints.maxHeight > 600
                    ? size.height * 0.2
                    : size.height * 0.3,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                       
                      child: Image(
                        image: AssetImage("assets/images/Group 3361.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Password Change",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              
                            ],
                          ),
                          Image(
                                  image:
                                      AssetImage("assets/images/Group 3466.png")),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
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
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                              // Navigator.push(
                              //            context,
                              //            MaterialPageRoute(builder: (context) => const ProfileScreen()),
                              //          );
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

            ]),

        );
      }),
    );
  }
}