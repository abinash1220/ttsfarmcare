import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';

import '../landing_page/landing_screen.dart';
import 'new_password_sucessfully.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 80),
                child: InkWell(
                    onTap: () {
                      Get.back();
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
            padding: const EdgeInsets.only(top: 310, left: 10),
            child: Column(
              children: [
                Text(
                  "New Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 35),
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
                    style: GoogleFonts.montserrat(fontSize: 13),
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
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: darkGreenColor)),
                        //filled: true,
                        // fillColor: Color(0xffECF2F0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Enter New Password",
                        hintStyle: TextStyle(
                          color: const Color(0xff292724),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text("8 Symbls at least"),
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
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: darkGreenColor)),
                        //filled: true,
                        // fillColor: Color(0xffECF2F0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                          color: const Color(0xff292724),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewPasswordSucessfully()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: Container(
                      height: 50,
                      width: size.width,
                      child: Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          
                          fontSize: 18,
                        ),
                      )),
                      decoration: BoxDecoration(
                        color: const Color(0xff016942),
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
