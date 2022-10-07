import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/landing_page/login_page.dart';

class NewPasswordSucessfully extends StatefulWidget {
  const NewPasswordSucessfully({super.key});

  @override
  State<NewPasswordSucessfully> createState() => _NewPasswordSucessfullyState();
}

class _NewPasswordSucessfullyState extends State<NewPasswordSucessfully> {
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
              )
              ),
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
            padding: const EdgeInsets.only(top: 310,),
            child: Column(
              children: [
                Center(child: Image(image: AssetImage("assets/images/sucessfully.png"))),
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
                  SizedBox(height: 100,),
                  InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
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