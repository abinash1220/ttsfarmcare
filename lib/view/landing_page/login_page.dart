// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ttsfarmcare/constants/app_colors.dart';
// import 'package:ttsfarmcare/view/home_Screen/home_Screen.dart';
// import 'package:ttsfarmcare/view/home_Screen/test_screen.dart';
// import 'package:ttsfarmcare/view/landing_page/landing_screen.dart';


// import '../forgot_password_page/forgot_password_screen.dart';
// import '../sign_in_view/test_sign_up.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   bool isCheked = false;
//   bool _isHidden = true;

//   void _togglePasswordView() {
//     setState(() {
//       _isHidden = !_isHidden;
//     });
//   }

//   TextEditingController usernamecontroller = TextEditingController();
//   TextEditingController emailcontroller = TextEditingController();

//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     ScreenUtil.init(context);
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Stack(
//         children: [
//           Container(
//              // height: size.height * 0.35,
//               //width: size.width,
//               child: Image(
//                 image: AssetImage("assets/images/3453.png"),
//                 fit: BoxFit.cover,
//               )),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(bottom: 80),
//                 child: InkWell(
//                    onTap: () {
//                                 Get.back();
//                               },
//                     child: Image(image: AssetImage("assets/icons/img.png"))),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: 40),
//                 child: Image(image: AssetImage("assets/images/zxc.png")),
//               ),
//               Container(
//                 height: 1,
//               ),
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: size.height * 0.3),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Welcome back",
//                   style: GoogleFonts.montserrat(
//                       fontWeight: FontWeight.bold,
                      
//                       fontSize: 40.sp),
//                 ),
//                 Text(
//                   "Login to your account",
//                   style:GoogleFonts.montserrat(fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 40.h,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: Container(
//                     height: 50,
//                     width: size.width,
//                     child: TextFormField(
//                       keyboardType: TextInputType.emailAddress,
//                       cursorColor: darkGreenColor,
//                       decoration: InputDecoration(
//                         filled: true,
//                         isDense: true,
//                         fillColor: Color(0xffECF2F0),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         hintText: "Email / User Name",
//                         hintStyle:GoogleFonts.montserrat(
//                           color: const Color(0xff517937),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 35.h,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: Container(
//                     height: 50,
//                     width: size.width,
//                     child: TextFormField(
//                       keyboardType: TextInputType.visiblePassword,
//                       cursorColor:darkGreenColor,                    
//                       obscureText: _isHidden,
//                       // controller: passwordcontroller,
//                       decoration: InputDecoration(
//                         filled: true,
//                         isDense: true,
//                         fillColor: Color(0xffECF2F0),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         hintText: "Password",
//                         suffixIcon: InkWell(
//                           onTap: _togglePasswordView,
//                           child: Icon(
//                             _isHidden ? Icons.visibility_off : Icons.visibility,
//                             color: Color(0xff517937),
//                           ),
//                         ),
//                         hintStyle: GoogleFonts.montserrat(
//                           color: const Color(0xff517937),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Checkbox(
//                           activeColor: Color(0xff517937),
//                           value: isCheked,
//                           onChanged: (value) {
//                             setState(() {
//                               isCheked = !isCheked;
//                             });
//                           }),
//                     ),
//                     Text("Remeber Me",
//                     style:GoogleFonts.montserrat(),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 80),
//                       child: TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     const ForgotPasswordPage()),
//                           );
//                         },
//                         child: Text(
//                           "Forgot Password",
//                           style: GoogleFonts.montserrat(
//                             color: Color(0xff517937),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 60.h,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const HomeScreen()),
//                     );
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 20),
//                     child: Container(
//                       height: 50,
//                       width: size.width,
//                       child: Center(
//                           child: Text(
//                         "Login",
//                         style:GoogleFonts.montserrat(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       )),
//                       decoration: BoxDecoration(
//                         color: const Color(0xff016942),
//                         borderRadius: BorderRadius.circular(35),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "did't have an account?",
//                       style:GoogleFonts.montserrat(fontSize: 18),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const ExamsView()),
//                     );
//                       },
//                       child: Text(
//                         "Sign Up",
                        
//                         style:GoogleFonts.montserrat(
//                           color: Color(0xff016942),
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           decoration: TextDecoration.underline,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
