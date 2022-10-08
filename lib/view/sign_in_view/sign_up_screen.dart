// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:ttsfarmcare/view/sign_in_view/signUp_mobileNumber_screen.dart';

// import '../../controllers/sign_up_controllers.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {

// final signUpController = Get.find<SignUpControllers>();

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

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Stack(
//         children: [
//           Container(
//               width: size.width,
//               // height: size.height * 0.35,
//               child: Image(
//                 image: AssetImage("assets/images/3453.png"),
//                 fit: BoxFit.fill,
//               )),
//           Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(top: 20),
//                     child: InkWell(
//                         onTap: () {
//                           Get.back();
//                         },
//                         child: Image(image: AssetImage("assets/icons/img.png"))),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 100),
//                     child: Text("Register",
//                     style: TextStyle(fontSize: 45,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.white,
//                     shadows: [
//                       Shadow(
//                       blurRadius: 2.0,
//                        color: Colors.black,
//                        offset: Offset(2.0, 2.0),
//                         ),
//                       ],
//                     ),
//                     )
//                   ),
//                   Container(
//                     height: 1,
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10,),
//               Text("Create Your New Account",
//               style: TextStyle(fontSize: 20,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.white,
//                     shadows: [
//                       Shadow(
//                       blurRadius: 1.0,
//                        color: Colors.black,
//                        offset: Offset(1.0, 1.0),
//                         ),
//                       ],
//               ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 230,),
//             child: Obx( () =>  Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: Row(
//                       children: [
//                         InkWell(
//                               onTap: () {
//                                 signUpController.isCustomer(true);
//                                 usernamecontroller.clear();
//                                 emailcontroller.clear();
//                                 passwordcontroller.clear();
//                                 addresscontroller.clear();
//                                 companynamecontroller.clear();
//                                 districtcontroller.clear();
//                                 gstnumbercontroller.clear();
//                                 // Navigator.push(
//                                 //   context,
//                                 //   MaterialPageRoute(builder: (context) => const LoginPage()),
//                                 // );
//                               },
//                               child: Container(
//                                 height: 40,
//                                 width: 140,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: Colors.black),
//                                   borderRadius: BorderRadius.circular(30),
//                                   color: signUpController.isCustomer.isTrue
//                                       ? Colors.black
//                                       : Colors.white,
//                                 ),
//                                 child: Center(
//                                     child: Text(
//                                   "Customer",
//                                   style: TextStyle(
//                                       color: signUpController.isCustomer.isTrue
//                                           ? Colors.white
//                                           : Colors.black),
//                                 )),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 30,
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 signUpController.isCustomer(false);
//                                 usernamecontroller.clear();
//                                 emailcontroller.clear();
//                                 passwordcontroller.clear();
//                                 addresscontroller.clear();
//                                 companynamecontroller.clear();
//                                 districtcontroller.clear();
//                                 gstnumbercontroller.clear();
//                                 // Navigator.push(
//                                 //   context,
//                                 //   MaterialPageRoute(builder: (context) => const LoginPage()),
//                                 // );
//                               },
//                               child: Container(
//                                 height: 40,
//                                 width: 140,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: Colors.black),
//                                   borderRadius: BorderRadius.circular(30),
//                                   color: signUpController.isCustomer.isFalse
//                                       ? Colors.black
//                                       : Colors.white,
//                                 ),
//                                 child: Center(
//                                     child: Text(
//                                   "Retail",
//                                   style: TextStyle(
//                                       color: signUpController.isCustomer.isFalse
//                                           ? Colors.white
//                                           : Colors.black),
//                                 )),
//                               ),
//                             ),
                            

                            
            
//                       ],
//                     ),
//                   ),
                  
//                   ListView(
//                     shrinkWrap: true,
//                     children: [
//                       Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(right: 20),
//                           child: Container(
//                             height: 50,
//                             width: 335,
//                             child: TextFormField(
//                               controller: companynamecontroller,
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xffECF2F0),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 hintText: "Company name",
//                                 hintStyle: TextStyle(
//                                   color: const Color(0xff517937),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         if (signUpController.isCustomer.isFalse)
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
                        
//                         Padding(
//                           padding: const EdgeInsets.only(right: 20),
//                           child: Container(
//                             height: 50,
//                             width: 335,
//                             child: TextFormField(
//                               controller: companynamecontroller,
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xffECF2F0),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 hintText: "Company name",
//                                 hintStyle: TextStyle(
//                                   color: const Color(0xff517937),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
                       
//                         Padding(
//                           padding: const EdgeInsets.only(right: 20),
//                           child: Container(
//                             height: 50,
//                             width: 335,
//                             child: TextFormField(
//                               controller: gstnumbercontroller,
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xffECF2F0),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 hintText: "GST Number",
//                                 hintStyle: TextStyle(
//                                   color: const Color(0xff517937),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     //next
                   
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Container(
//                       height: 50,
//                       width: 335,
//                       child: TextFormField(
//                         controller: emailcontroller,
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Color(0xffECF2F0),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           hintText: "Email Id",
//                           hintStyle: TextStyle(
//                             color: const Color(0xff517937),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
                  
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Container(
//                       height: 50,
//                       width: 335,
//                       child: TextFormField(
//                         obscureText: _isHidden,
//                         controller: passwordcontroller,
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Color(0xffECF2F0),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           hintText: "Password",
//                           suffixIcon: InkWell(
//                             onTap: _togglePasswordView,
//                             child: Icon(
//                               _isHidden ? Icons.visibility_off : Icons.visibility,
//                               color: Color(0xff517937),
//                             ),
//                           ),
//                           hintStyle: TextStyle(
//                             color: const Color(0xff517937),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
                  
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Container(
//                       height: 50,
//                       width: 335,
//                       child: TextFormField(
//                         controller: addresscontroller,
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Color(0xffECF2F0),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           hintText: "Address",
//                           hintStyle: TextStyle(
//                             color: const Color(0xff517937),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),                                 
//                   Padding(
//                     padding: const EdgeInsets.only( right: 20),
//                     child: Container(
//                       height: 56,
//                       width:size.width,
//                       child: Flexible(
//                         child: DropdownSearch<String>(
//                           popupProps: PopupProps.menu(
//                             showSelectedItems: true,
//                             showSearchBox: true,
//                             searchFieldProps: TextFieldProps(
//                               decoration: InputDecoration(
//                                 suffixIcon: Icon(Icons.search,)
//                               )
//                             ),
                           
//                           ),
//                           items: ["chennai","vellore","trichy","salem"],
//                           dropdownDecoratorProps: DropDownDecoratorProps(
//                             dropdownSearchDecoration: InputDecoration(
//                               filled: true,                       
//                               fillColor:  const Color(0xffECF2F0),
//                               iconColor: Color(0xff517937),
                             
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.all(Radius.circular(30)),
//                                 borderSide: BorderSide(color: const Color(0xff517937), )
//                                 ),
//                              //labelText: "district",
                             
//                              hintText: "District",
//                              hintStyle: TextStyle(
//                               color: const Color(0xff517937),
//                             ),
//                             ),
//                           ),
//                          // onChanged: print,
//                           //selectedItem: "chennai",
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: RichText(
//                       text: TextSpan(
//                           text: "By signing your agree to our",
//                           style: TextStyle(
//                             color: const Color(0xff016942),
//                           ),
//                           children: <TextSpan>[
//                             TextSpan(
//                               text: " Terms of use",
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ]),
//                     ),
//                   ),
//                   RichText(
//                     text: TextSpan(
//                         text: "and ",
//                         style: TextStyle(
//                           color: const Color(0xff016942),
//                         ),
//                         children: <TextSpan>[
//                           TextSpan(
//                             text: "privacy policy",
//                             style: TextStyle(color: Colors.black),
//                           ),
//                         ]),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const SignUpMobNumber()),
//                         );
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(right: 20),
//                         child: Container(
//                           height: 50,
//                           width: size.width,
//                           child: Center(
//                               child: Text(
//                             "Next",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           )),
//                           decoration: BoxDecoration(
//                             color: const Color(0xff016942),
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                         ),
//                       ),
//                     ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Already have an account?",
//                           style: TextStyle(fontSize: 18),
//                         ),
//                         TextButton(
//                           onPressed: () {},
//                           child: Text(
//                             "Login",
//                             style: TextStyle(
//                               color: Color(0xff016942),
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                       ],
//                       ),

//                     ],
//                      ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
