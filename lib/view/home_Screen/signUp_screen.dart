import 'dart:developer';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:ttsfarmcare/controllers/add_address_api_controllers/get_district_list_api_controller.dart';
import 'package:ttsfarmcare/controllers/registration_api_controller.dart';
import 'package:ttsfarmcare/view/login_in_page/login_screen.dart';
import '../../constants/app_colors.dart';
import '../../controllers/register_controller.dart';
import '../../controllers/sign_up_controllers.dart';
import '../../models/district_list_model.dart';
import '../sign_in_view/mobile_number.dart';

class ExamsView extends StatefulWidget {
  const ExamsView({super.key});

  @override
  State<ExamsView> createState() => _ExamsViewState();
}

class _ExamsViewState extends State<ExamsView> {
  final signUpController = Get.find<SignUpControllers>();

  final registerController = Get.find<RegisterController>();

  final getDistrictController = Get.find<GetDistrictController>();

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController districtcontroller = TextEditingController();
  TextEditingController companynamecontroller = TextEditingController();
  TextEditingController gstnumbercontroller = TextEditingController();
  TextEditingController mobileNumbercontroller = TextEditingController();

  final RegExp phoneRegex = new RegExp(r'^[6-9]\d{9}');

  bool isKeyBoardVisile = false;
  bool _isHidden = true;
  bool isPwd = true;

  bool isGSTNum = true;

  validatePwd(){
   if (passwordcontroller.text.length > 1) {
  if(passwordcontroller.text.length > 7){
        setState(() {
          isPwd = true;
        });
  }else{
    setState(() {
      isPwd = false;
    });
  }
}else{
  setState(() {
    isPwd = true;
  });
}

  }

  
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  int inm = 0;

  @override
  void initState() {
    super.initState();
    signUpController.isCustomer(true);
    passwordcontroller.addListener(validatePwd);
    getDistrictController.getDistrictList();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 50),
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
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Register",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      shadows: [
                        Shadow(
                          blurRadius: 6.0,
                          color: Color(0xff707070),
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Create Your New Account",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 22,
                      shadows: [
                        Shadow(
                          blurRadius: 8.0,
                          color: Color(0xff707070),
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          toolbarHeight: 150,
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
                      BorderRadius.only(bottomLeft: Radius.circular(50))),
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
              borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
          child: Obx(
            () => (ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            
                            signUpController.isCustomer(true);
                            usernamecontroller.clear();
                            emailcontroller.clear();
                            passwordcontroller.clear();
                            addresscontroller.clear();
                            companynamecontroller.clear();
                            districtcontroller.clear();
                            gstnumbercontroller.clear();
                            mobileNumbercontroller.clear();
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const LoginPage()),
                            // );
                            setState(() {
                              isPwd = true;
                              isGSTNum = true;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                              color: signUpController.isCustomer.isTrue
                                  ? Colors.black
                                  : Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Customer",
                              style: GoogleFonts.montserrat(
                                  color: signUpController.isCustomer.isTrue
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: () {
                            
                            signUpController.isCustomer(false);
                            usernamecontroller.clear();
                            emailcontroller.clear();
                            passwordcontroller.clear();
                            addresscontroller.clear();
                            companynamecontroller.clear();
                            districtcontroller.clear();
                            gstnumbercontroller.clear();
                            mobileNumbercontroller.clear();
                            
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const LoginPage()),
                            // );
                            setState(() {
                              isPwd = true;
                              isGSTNum =true;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                              color: signUpController.isCustomer.isFalse
                                  ? Colors.black
                                  : Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Retail",
                              style: GoogleFonts.montserrat(
                                  color: signUpController.isCustomer.isFalse
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                KeyboardVisibilityBuilder(
                    builder: (context, isKeyboardVisible) {
                  String regex;
                  return Container(
                    height: size.height * 0.7,
                    width: size.width,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Container(
                            height: 50.h,
                            width: size.width,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp("[a-z A-Z]"))
                              ],
                              controller:usernamecontroller,
                              cursorColor: darkGreenColor,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: darkGreenColor, width: 1.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Color(0xff517937), width: 0.7)),
                                filled: true,
                                fillColor: Color(0xffECF2F0),
                                isDense: true,
                                hintText: "User Name",
                                hintStyle: GoogleFonts.montserrat(
                                  color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (signUpController.isCustomer.isFalse)
                          Column(
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 25),
                                child: Container(
                                  height: 50.h,
                                  width: size.width,
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp("[a-z A-Z]"))
                              ],
                                    controller:companynamecontroller,
                                    cursorColor: darkGreenColor,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: darkGreenColor,
                                              width: 1.5)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Color(0xff517937),
                                              width: 0.7)),
                                      filled: true,
                                      fillColor: Color(0xffECF2F0),
                                      isDense: true,
                                      hintText: "Company name",
                                      hintStyle: GoogleFonts.montserrat(
                                        color: const Color(0xff517937),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 25),
                                child: Container(
                                  height: 50.h,
                                  width: size.width,
                                  child: TextFormField(
                                    onChanged: (value) {
                                      setState(() {
                                         isGSTNum = gstvalidate(value);
                                      });
                                    },
                                    controller:gstnumbercontroller,
                                    textCapitalization: TextCapitalization.characters,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(15),
                                     ],
                                    cursorColor: darkGreenColor,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: darkGreenColor,
                                              width: 1.5)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Color(0xff517937),
                                              width: 0.7)),
                                      filled: true,
                                      fillColor: Color(0xffECF2F0),
                                      isDense: true,
                                      hintText: "GST Number",
                                      hintStyle: GoogleFonts.montserrat(
                                        color: const Color(0xff517937),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if(isGSTNum == false && gstnumbercontroller.text.isNotEmpty) Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text("GST number is not valid",style: TextStyle(color: Colors.red),),
                          ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Container(
                            height: 50.h,
                            width: size.width,
                            child: TextFormField(
                              controller:emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: darkGreenColor,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: darkGreenColor, width: 1.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Color(0xff517937), width: 0.7)),
                                filled: true,
                                fillColor: Color(0xffECF2F0),
                                isDense: true,
                                hintText: "Email ID",
                                hintStyle: GoogleFonts.montserrat(
                                  color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Padding(
                      padding: const EdgeInsets.only(right: 25, left: 25),
                      child: Container(
                        height: 50,
                        width: size.width,
                        child: TextFormField(
                          controller: mobileNumbercontroller,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'),
                                ),
                                FilteringTextInputFormatter.deny(
                                  RegExp(
                                      r'^0+'), //users can't type 0 at 1st position
                                ),
                                FilteringTextInputFormatter.deny(
                                  RegExp(
                                      r'^1+'), //users can't type 0 at 1st position
                                ),
                                FilteringTextInputFormatter.deny(
                                  RegExp(
                                      r'^2+'), //users can't type 0 at 1st position
                                ),
                                FilteringTextInputFormatter.deny(
                                  RegExp(
                                      r'^3+'), //users can't type 0 at 1st position
                                ),
                                FilteringTextInputFormatter.deny(
                                  RegExp(
                                      r'^4+'), //users can't type 0 at 1st position
                                ),
                                FilteringTextInputFormatter.deny(
                                  RegExp(
                                      r'^5+'), //users can't type 0 at 1st position
                                ),
                              ],
                          cursorColor: darkGreenColor,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffECF2F0),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: darkGreenColor, width: 1.5)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Color(0xff517937), width: 0.7),
                            ),
                            hintText: "Mobile Number",
                            isDense: true,
                            hintStyle: GoogleFonts.montserrat(
                              color: const Color(0xff517937),
                            ),
                          ),
                          validator: (value) {
                            if (!phoneRegex.hasMatch(value!)) {
                              return 'Please enter valid phone number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Container(
                            height: 50.h,
                            width: size.width,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              inputFormatters: [
                            LengthLimitingTextInputFormatter(8),
                          ],
                              obscureText: _isHidden,
                              controller:passwordcontroller,
                              cursorColor: darkGreenColor,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: darkGreenColor, width: 1.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Color(0xff517937), width: 0.7)),
                                filled: true,
                                fillColor: Color(0xffECF2F0),
                                isDense: true,
                                hintText: "Password",
                                suffixIcon: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    _isHidden
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color(0xff517937),
                                  ),
                                ),
                                hintStyle: GoogleFonts.montserrat(
                                  color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (isPwd == false && passwordcontroller.text.isNotEmpty)Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("password must be 8 characters",
                        style: TextStyle(color: Colors.red),
                  ),
                ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Container(
                            height: 50.h,
                            width: size.width,
                            child: TextFormField(
                              keyboardType: TextInputType.streetAddress,
                              cursorColor: darkGreenColor,
                              controller:addresscontroller,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: darkGreenColor, width: 1.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Color(0xff517937), width: 0.7)),
                                filled: true,
                                isDense: true,
                                fillColor: Color(0xffECF2F0),
                                hintText: "Address",
                                hintStyle: GoogleFonts.montserrat(
                                  color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GetBuilder<GetDistrictController>(builder: (_) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 25, right: 25),
                              child: Container(
                                height: 58.h,
                                width: size.width,
                                child: DropdownSearch<DistrictList>(
                                  itemAsString: (DistrictList u) => u.name,
                                  items:getDistrictController.districtlist,
                                  onChanged: ((DistrictList? value) {
                                    setState(() {
                                      districtcontroller
                                          .text = value!.name;
                                    });
                                  }),
                                  dropdownDecoratorProps: DropDownDecoratorProps(
                                    textAlign: TextAlign.start,
                                    dropdownSearchDecoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: darkGreenColor, width: 1.5)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Color(0xff517937),
                                              width: 0.7)),
                                      filled: true,
                                      fillColor: const Color(0xffECF2F0),
                                      iconColor: Color(0xff517937),
                                      isDense: true,
                                      //labelText: "district",
                                      hintText: "District",
                                      hintStyle: GoogleFonts.montserrat(
                                        color: const Color(0xff517937),
                                      ),
                                    ),
                                  ),
                                  // onChanged: print,
                                  //selectedItem: "chennai",
                                ),
                              ),
                            );
                          }
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: RichText(
                            text: TextSpan(
                                text: "By signing your agree to our",
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xff016942),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: " Terms of use",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black),
                                  ),
                                ]),
                          ),
                        ),
                        Center(
                          child: RichText(
                            text: TextSpan(
                                text: "and ",
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xff016942),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "privacy policy",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black),
                                  ),
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            // inm++;
                            // Logger().d("logger is working");
                            // Logger().i("line ------$inm-------------");
                            print("::::::::::::::::::click:::::::::::::::::");
                           
                            if (usernamecontroller.text.isNotEmpty &&
                               emailcontroller.text.isNotEmpty &&
                               mobileNumbercontroller.text.isNotEmpty &&
                                passwordcontroller.text.isNotEmpty &&
                               addresscontroller.text.isNotEmpty) {
                              if (emailcontroller.text.isEmail) {
                                if(isPwd && isGSTNum){registerController.registerUser(
                                name: usernamecontroller.text, 
                                email: emailcontroller.text, 
                                companyName:companynamecontroller.text,
                                gst_number:gstnumbercontroller.text,
                                mobile_number: mobileNumbercontroller.text, 
                                password: passwordcontroller.text, 
                                address: addresscontroller.text, 
                                district: districtcontroller.text, 
                                role: signUpController.isCustomer.isTrue ? "Customer" : signUpController.isCustomer.isFalse ? "Retail" : "Customer",
                                ) ;}
                                
                              } else {
                                Get.snackbar("Enter a  Valid Email ID", "",
                                    snackPosition: SnackPosition.BOTTOM,
                                    colorText: Colors.white,
                                    backgroundColor: Colors.red);
                              }
                            } else {
                              Get.closeAllSnackbars();
                              Get.snackbar("Please fill all the fields", "",
                                  snackPosition: SnackPosition.BOTTOM,
                                  colorText: Colors.white,
                                  backgroundColor: Colors.red);
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              height: 50,
                              width: size.width,
                              child: Center(
                                  child: Text(
                                "Sign up",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )),
                              decoration: BoxDecoration(
                                color: const Color(0xff016942),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: GoogleFonts.montserrat(fontSize: 18),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()),
                                );
                              },
                              child: Text(
                                "Login",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xff016942),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        if (isKeyboardVisible)
                          Container(
                            height: 200,
                          ),
                      ],
                    ),
                  );
                }),
              ],
            )),
          ),
        ),
      ),
    );
  }

  var mult = [
  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
  [1, 2, 3, 4, 0, 6, 7, 8, 9, 5],
  [2, 3, 4, 0, 1, 7, 8, 9, 5, 6],
  [3, 4, 0, 1, 2, 8, 9, 5, 6, 7],
  [4, 0, 1, 2, 3, 9, 5, 6, 7, 8],
  [5, 9, 8, 7, 6, 0, 4, 3, 2, 1],
  [6, 5, 9, 8, 7, 1, 0, 4, 3, 2],
  [7, 6, 5, 9, 8, 2, 1, 0, 4, 3],
  [8, 7, 6, 5, 9, 3, 2, 1, 0, 4],
  [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
];
var perm = [
  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
  [1, 5, 7, 6, 2, 8, 3, 0, 9, 4],
  [5, 8, 0, 3, 7, 9, 6, 1, 4, 2],
  [8, 9, 1, 6, 0, 4, 3, 5, 2, 7],
  [9, 4, 5, 3, 1, 2, 6, 8, 7, 0],
  [4, 2, 8, 6, 5, 7, 3, 9, 0, 1],
  [2, 7, 9, 3, 8, 0, 6, 4, 1, 5],
  [7, 0, 4, 6, 9, 1, 3, 2, 5, 8]
];
var i, j, x;

String reverseString(String gstNum) {
  var chars = gstNum.split('');
  return chars.reversed.join();
}

int listElementsSum(List a) {
  int sum = 0;
  if (a.length <= 1) {
    return a[0];
  } else {
    for (int e in a) {
      sum += e;
    }
  }
  return sum;
}



   bool gstvalidate(String gstNum) {
    var check, lmo, gst, csum;
    check = reverseString(gstNum)[0];
    lmo = gstNum.substring(0, 14);
    List l = [], m = [], n = [];
    gst = lmo.split('');
    for (var i = 0; i < gst.length; ++i) {
      if (RegExp(r'^[0-9]+$').hasMatch(gst[i])) {
        l.add(int.parse(gst[i]));
      } else {
        l.add(lmo.codeUnitAt(i) - 55);
      }
    }
    for (var i = 0; i < l.length; ++i) {
      m.add(l[i] * (i % 2 + 1));
    }
    for (var i = 0; i < m.length; ++i) {
      n.add(((m[i] / 36) + (m[i] % 36)).truncate());
    }
    var sum = listElementsSum(n);

    csum = 36 - sum % 36;
    csum = csum < 10 ? csum.toString() : String.fromCharCode(csum + 55);
    bool val = csum == check ? true : false;
    return val;
  }
}
