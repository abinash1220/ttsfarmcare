// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ttsfarmcare/controllers/sign_up_controllers.dart';
// import 'package:ttsfarmcare/view/landing_page/login_page.dart';
// import 'package:ttsfarmcare/view/sign_in_view/signUp_mobileNumber_screen.dart';

// class SignUpTestView extends StatefulWidget {
//   const SignUpTestView({super.key});

//   @override
//   State<SignUpTestView> createState() => _SignUpTestViewState();
// }

// class _SignUpTestViewState extends State<SignUpTestView> {
//   final signUpController = Get.find<SignUpControllers>();

//   bool _isHidden = true;

//   TextEditingController usernamecontroller = TextEditingController();
//   TextEditingController emailcontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();
//   TextEditingController addresscontroller = TextEditingController();
//   TextEditingController districtcontroller = TextEditingController();
//   TextEditingController companynamecontroller = TextEditingController();
//   TextEditingController gstnumbercontroller = TextEditingController();
//   void _togglePasswordView() {
//     setState(() {
//       _isHidden = !_isHidden;
//     });
//   }

//   String _dropdownValue = "Dash";
//   List<String> dropDownOptions = [
//     "Dash",
//     "Sparky",
//     "Snoo",
//     "Clippy",
//   ];

//   void dropdownCallback(String? selectedValue) {
//     if (selectedValue is String) {
//       setState(() {
//         _dropdownValue = selectedValue;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: LayoutBuilder(
//               builder: (BuildContext ctx, BoxConstraints constraints) {
//             return SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//                 height: size.height,
//                 child:  Obx(() =>
//                   Column(
//                     children: [
//                       Expanded(
//                         flex: 4,
//                         child: Container(
//                           child: Stack(
//                             children: [
//                               Container(
//                                   width: size.width,
//                                   height: size.height * 0.40,
//                                   child: Image(
//                                     image: AssetImage("assets/images/3453.png"),
//                                     fit: BoxFit.cover,
//                                   )),
//                               Positioned(
//                                 left: 10,
//                                 top: 50,
//                                 child: InkWell(
//                                   onTap: () {
//                                   Get.back();
//                                 },
//                                   child: Image(
//                                     image: AssetImage(
//                                       "assets/icons/img.png",
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 50),
//                                 child: Center(
//                                   child: Column(
//                                     children: [
//                                       Text(
//                                         "Register",
//                                         style: GoogleFonts.montserrat(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 45,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                         "Create Your New Account",
//                                         style: GoogleFonts.montserrat(
//                                           color: Colors.white,
//                                           fontSize: 22,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: constraints.maxHeight > 600 ? 25 : 0,
//                                 left: constraints.maxHeight > 600 ? 35 : 50,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     InkWell(
//                                       onTap: () {
//                                         signUpController.isCustomer(true);
//                                         usernamecontroller.clear();
//                                         emailcontroller.clear();
//                                         passwordcontroller.clear();
//                                         addresscontroller.clear();
//                                         companynamecontroller.clear();
//                                         districtcontroller.clear();
//                                         gstnumbercontroller.clear();
//                                         // Navigator.push(
//                                         //   context,
//                                         //   MaterialPageRoute(builder: (context) => const LoginPage()),
//                                         // );
//                                       },
//                                       child: Container(
//                                         height:constraints.maxHeight > 600 ? 40 : 30,
//                                         width: constraints.maxHeight > 600 ? 150 : 120,
//                                         decoration: BoxDecoration(
//                                           border: Border.all(color: Colors.black),
//                                           borderRadius: BorderRadius.circular(30),
//                                           color: signUpController.isCustomer.isTrue
//                                               ? Colors.black
//                                               : Colors.white,
//                                         ),
//                                         child: Center(
//                                             child: Text(
//                                           "Customer",
//                                           style: GoogleFonts.montserrat(
//                                               color:
//                                                   signUpController.isCustomer.isTrue
//                                                       ? Colors.white
//                                                       : Colors.black),
//                                         )),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 30,
//                                     ),
//                                     InkWell(
//                                       onTap: () {
//                                         signUpController.isCustomer(false);
//                                         usernamecontroller.clear();
//                                         emailcontroller.clear();
//                                         passwordcontroller.clear();
//                                         addresscontroller.clear();
//                                         companynamecontroller.clear();
//                                         districtcontroller.clear();
//                                         gstnumbercontroller.clear();
//                                         // Navigator.push(
//                                         //   context,
//                                         //   MaterialPageRoute(builder: (context) => const LoginPage()),
//                                         // );
//                                       },
//                                       child: Container(
//                                          height:
//                                             constraints.maxHeight > 600 ? 40 : 30,
//                                         width:
//                                             constraints.maxHeight > 600 ? 150 : 120,
//                                         decoration: BoxDecoration(
//                                           border: Border.all(color: Colors.black),
//                                           borderRadius: BorderRadius.circular(30),
//                                           color: signUpController.isCustomer.isFalse
//                                               ? Colors.black
//                                               : Colors.white,
//                                         ),
//                                         child: Center(
//                                             child: Text(
//                                           "Retail",
//                                           style: GoogleFonts.montserrat(
//                                               color: signUpController
//                                                       .isCustomer.isFalse
//                                                   ? Colors.white
//                                                   : Colors.black),
//                                         )),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 5,
//                         child: Container(
                         
//                           child: SingleChildScrollView(
//                             child: Column(
//                               children: [
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Container(
//                                   height: 45.h,
//                                   width: 310.w,
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     inputFormatters: [
//                                       FilteringTextInputFormatter.allow(RegExp("[a-z A-Z]"))
//                                     ],
//                                     controller: usernamecontroller,
//                                     decoration: InputDecoration(
//                                       filled: true,
//                                       fillColor: Color(0xffECF2F0),
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                       hintText: "User Name",
//                                       hintStyle: GoogleFonts.montserrat(
//                                         color: const Color(0xff517937),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 if (signUpController.isCustomer.isFalse)
//                                   Column(
//                                     children: [
//                                       SizedBox(
//                                         height: 20.h,
//                                       ),
//                                       Container(
//                                         height: 45.h,
//                                         width: 310.w,
//                                         child: TextFormField(
//                                           keyboardType: TextInputType.name,
//                                           controller: companynamecontroller,
//                                           decoration: InputDecoration(
//                                             filled: true,
//                                             fillColor: Color(0xffECF2F0),
//                                             border: OutlineInputBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(30),
//                                             ),
//                                             hintText: "Company name",
//                                             hintStyle: GoogleFonts.montserrat(
//                                               color: const Color(0xff517937),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 20.h,
//                                       ),
//                                       Container(
                                        
//                                         height: 45.h,
//                                         width: 310.w,
//                                         child: TextFormField(
//                                           controller: gstnumbercontroller,
//                                           decoration: InputDecoration(
//                                             filled: true,
//                                             fillColor: Color(0xffECF2F0),
//                                             border: OutlineInputBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(30),
//                                             ),
//                                             hintText: "GST Number",
//                                             hintStyle: GoogleFonts.montserrat(
//                                               color: const Color(0xff517937),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 SizedBox(
//                                   height: 20.h,
//                                 ),
//                                 Container(
//                                   height: 45.h,
//                                   width: 310.w,
//                                   child: TextFormField(
//                                     controller: emailcontroller,
//                                     keyboardType: TextInputType.emailAddress,
//                                     decoration: InputDecoration(
//                                       filled: true,
//                                       fillColor: Color(0xffECF2F0),
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                       hintText: "Email ID",
//                                       hintStyle: GoogleFonts.montserrat(
//                                         color: const Color(0xff517937),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 20.h,
//                                 ),
//                                 Container(
//                                   height: 45.h,
//                                   width: 310.w,
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.visiblePassword,
//                                     obscureText: _isHidden,
//                                     controller: passwordcontroller,
//                                     decoration: InputDecoration(
//                                       filled: true,
//                                       fillColor: Color(0xffECF2F0),
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                       hintText: "Password",
//                                       suffixIcon: InkWell(
//                                         onTap: _togglePasswordView,
//                                         child: Icon(
//                                           _isHidden
//                                               ? Icons.visibility_off
//                                               : Icons.visibility,
//                                           color: Color(0xff517937),
//                                         ),
//                                       ),
//                                       hintStyle: GoogleFonts.montserrat(
//                                         color: const Color(0xff517937),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 20.h,
//                                 ),
//                                 Container(
//                                   height: 50.h,
//                                   width: 310.w,
//                                   child: TextFormField(

//                                     keyboardType: TextInputType.streetAddress,
//                                     controller: addresscontroller,
//                                     decoration: InputDecoration(
//                                       filled: true,
//                                       isDense: true,
//                                       fillColor: Color(0xffECF2F0),
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                       hintText: "Address",
//                                       hintStyle: GoogleFonts.montserrat(
//                                         color: const Color(0xff517937),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 20.h,
//                                 ),
                
//                                 Container(
//                                   height: 55.h,
//                                   width: 310.w,
//                                   child: DropdownSearch<String>(
//                                     popupProps: PopupProps.menu(
//                                       showSelectedItems: true,
//                                       showSearchBox: true,
//                                       searchFieldProps: TextFieldProps(
//                                           decoration: InputDecoration(
//                                               suffixIcon: Icon(
//                                         Icons.search,
//                                       ))),
//                                     ),
//                                     items: [
//                                       "chennai",
//                                       "vellore",
//                                       "trichy",
//                                       "salem"
//                                     ],
//                                     dropdownDecoratorProps:
//                                         DropDownDecoratorProps(
//                                           textAlign: TextAlign.start,
                                          
//                                       dropdownSearchDecoration: InputDecoration(
//                                         filled: true,
//                                         fillColor: const Color(0xffECF2F0),
//                                         iconColor: Color(0xff517937),
                
//                                         border: OutlineInputBorder(
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(30)),
//                                             borderSide: BorderSide(
//                                               color: const Color(0xff517937),
//                                             )),
//                                         //labelText: "district",
                
//                                         hintText: "District",
//                                         hintStyle: GoogleFonts.montserrat(
//                                           color: const Color(0xff517937),
//                                         ),
//                                       ),
//                                     ),
//                                     // onChanged: print,
//                                     //selectedItem: "chennai",
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 30,
//                                 ),
//                                 RichText(
//                                   text: TextSpan(
//                                       text: "By signing your agree to our",
//                                       style: GoogleFonts.montserrat(
//                                         color: const Color(0xff016942),
//                                       ),
//                                       children: <TextSpan>[
//                                         TextSpan(
//                                           text: " Terms of use",
//                                           style: GoogleFonts.montserrat(color: Colors.black),
//                                         ),
//                                       ]),
//                                 ),
//                                 RichText(
//                                   text: TextSpan(
//                                       text: "and ",
//                                       style: GoogleFonts.montserrat(
//                                         color: const Color(0xff016942),
//                                       ),
//                                       children: <TextSpan>[
//                                         TextSpan(
//                                           text: "privacy policy",
//                                           style: GoogleFonts.montserrat(color: Colors.black),
//                                         ),
//                                       ]),
//                                 ),
//                                 SizedBox(
//                                   height: 30,
//                                 ),
//                                 InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) =>
//                                               const SignUpMobNumber()),
//                                     );
//                                   },
//                                   child: Padding(
//                                     padding:
//                                         const EdgeInsets.only(left: 30, right: 30),
//                                     child: Container(
//                                       height: 50,
//                                       width: size.width,
//                                       child: Center(
//                                           child: Text(
//                                         "Sign up",
//                                         style: GoogleFonts.montserrat(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20,
//                                         ),
//                                       )),
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xff016942),
//                                         borderRadius: BorderRadius.circular(25),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       "Already have an account?",
//                                       style: GoogleFonts.montserrat(fontSize: 18),
//                                     ),
//                                     TextButton(
//                                       onPressed: () {
//                                          Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const LoginPage()),
//                       );
//                                       },
//                                       child: Text(
//                                         "Login",
//                                         style: GoogleFonts.montserrat(
//                                           color: Color(0xff016942),
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold,
//                                           decoration: TextDecoration.underline
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),

//                                 Container(
//                                   height: 30+MediaQuery.of(context).viewInsets.bottom,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
