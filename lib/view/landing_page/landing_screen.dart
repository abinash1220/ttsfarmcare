import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_phone_field/demo.dart';
import '../home_Screen/test_screen.dart';
import '../login_in_page/login_screen.dart';

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
                      color: Color(0xffFFFFFF),
                      letterSpacing: 3,
                      shadows: [
                        Shadow(
                        blurRadius: 5.0,
                         color: Color(0xff707070),
                         offset: Offset(3.0, 3.0),
                          ),
                        ],
                      fontWeight: FontWeight.w600,
                      fontSize: 45,
                    ),
                  ),           
                  ),
                  SizedBox(
                    height: 160,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ExamsView()),
                      );
                    },
                    child: Container(
                      height: 50,
                      width:320,                
                      child: Center(
                        child: Text("Sign Up",
                        style: GoogleFonts.montserrat(
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
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 320,                
                      child: Center(
                        child: Text("Log In",
                        style: GoogleFonts.montserrat(
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