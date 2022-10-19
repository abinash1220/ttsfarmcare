import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login_in_page/login_screen.dart';

class PasswordSuccessfullyScreen extends StatefulWidget {
  const PasswordSuccessfullyScreen({super.key});

  @override
  State<PasswordSuccessfullyScreen> createState() => _PasswordSuccessfullyScreenState();
}

class _PasswordSuccessfullyScreenState extends State<PasswordSuccessfullyScreen> {
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
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Center(child: Image(
                        height: 170,width: 170,
                        image: AssetImage("assets/images/sucessfully.png"))),
                      SizedBox(height: 30,),
                      Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Text("After the lost password is successfully reset,\n"
                                      "then the success message will be shown\n"
                                       "on the top of the login page saying\n"
                                       "“Your password has been reset ...",
                                   style: GoogleFonts.montserrat(fontSize: 13),
                                   textAlign:TextAlign.center,
                                   ),
                        ),
                    ],
                  ),
                  InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 40, left: 40),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: Center(
                                child: Text(
                              "Login Page",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
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
      ),
    );
  }
}