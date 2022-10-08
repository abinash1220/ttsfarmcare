import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/landing_page/login_page.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_page.dart';

import '../sign_in_view/sign_up_screen.dart';
import '../sign_in_view/test_sign_up.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/NoPath - Copy (3).png", ),
                  fit: BoxFit.cover
                )
              ),
        child: Stack(
          children: [            
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("The best \napp for \nyour plants",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.white,
                      letterSpacing: 3,
                      shadows: [
                        Shadow(
                        blurRadius: 5.0,
                         color: Colors.black,
                         offset: Offset(3.0, 3.0),
                          ),
                        ],
                      fontWeight: FontWeight.w600,
                      fontSize: 45,
                    ),
                  ),           
                  ),
                  SizedBox(
                    height: 170,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpTestView()),
                      );
                    },
                    child: Container(
                      height: 50,
                      width:320,                
                      child: Center(
                        child: Text("Sign Up",
                        style: TextStyle(
                          color: const Color(0xff517937),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          ),
                          )
                          ),               
                      decoration: BoxDecoration(
                        color: Colors.white,
                         border: Border.all(color: Color(0xff707070)),
                        borderRadius: BorderRadius.circular(25),
                       ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 320,                
                      child: Center(
                        child: Text("Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          ),
                          )
                          ),               
                      decoration: BoxDecoration(
                        color: const Color(0xff517937),
                        border: Border.all(color: Color(0xff707070)),
                        borderRadius: BorderRadius.circular(25),
                       ),
                    ),
                  ),
                
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}