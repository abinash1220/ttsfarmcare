import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/custom_phone_field/countries.dart';
import 'package:ttsfarmcare/view/custom_phone_field/country_picker.dart';
import 'package:ttsfarmcare/view/sign_in_view/sign_up_otp_screen.dart';

import '../../constants/app_colors.dart';
import '../../controllers/register_controller.dart';
import '../../controllers/sent_otp_api_controllers/sent_otp_api_controller.dart';

class MobileNumber extends StatefulWidget {
  String name;
  dynamic companyName;
  String email;
  String password;
  String address;
  dynamic gst_number;
  String district;

  MobileNumber({
    required this.address,
    this.companyName,
    required this.district,
    required this.email,
    required this.name,
    required this.password,
    this.gst_number,
  });

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  final RegExp phoneRegex = new RegExp(r'^[6-9]\d{9}');

  final registerController = Get.find<RegisterController>();

  final sentOtpController = Get.find<SentOtpController>();

  var mobileNumberController = TextEditingController();

  late List<Country> _countryList;
  late Country _selectedCountry;
  late List<Country> filteredCountries;
  late String number;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number = "91";
    _countryList = countries;

    filteredCountries = _countryList;
    _selectedCountry = countries.firstWhere(
        (country) => number.startsWith(country.dialCode),
        orElse: () => _countryList.first);
    number = number.substring(_selectedCountry.dialCode.length);
  }

  String _countryName = "India";
  String _countryNum = "91";

  Future<void> _changeCountry() async {
    filteredCountries = _countryList;
    await showDialog(
      context: context,
      useRootNavigator: false,
      builder: (context) => StatefulBuilder(
        builder: (ctx, setState) => CountryPickerDialog(
          filteredCountries: filteredCountries,
          searchText: "Search country",
          countryList: _countryList,
          selectedCountry: _selectedCountry,
          onCountryChanged: (Country country) {
            _selectedCountry = country;

            setState(() {
              _countryName = _selectedCountry.name;
              _countryNum = _selectedCountry.dialCode;
            });
          },
        ),
      ),
    );
    if (this.mounted) setState(() {});
  }

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
            padding: const EdgeInsets.only(right: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/images/Group 3472.png"),
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mobile Number",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We need to send OTP authenticate your number",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
          toolbarHeight: 248,
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
        child: KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: isKeyboardVisible ? 5 : 50),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, top: 60),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: size.width,
                          child: TextFormField(
                            onTap: () {},
                            readOnly: true,
                            keyboardType: TextInputType.number,
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
                              hintText: _countryName + "(+$_countryNum)",
                              isDense: true,
                              suffixIcon: InkWell(
                                onTap: () {
                                  _changeCountry();
                                },
                                child: Image(
                                  height: 30,
                                  width: 30,
                                  image: AssetImage(
                                      "assets/images/down-arrow.png"),
                                  color: Colors.grey,
                                ),
                              ),
                              hintStyle: GoogleFonts.montserrat(
                                color: const Color(0xff517937),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Container(
                        height: 50,
                        width: size.width,
                        child: TextFormField(
                          controller: mobileNumberController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10),
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
                      height: 120,
                    ),
                    InkWell(
                      onTap: () {
                        
                        if (mobileNumberController.text.isNotEmpty) {
                          registerController.registerUser(
                              name: widget.name,
                              email: widget.email,
                              mobile_number: mobileNumberController.text,
                              password: widget.password,
                              address: widget.address,
                              district: widget.district);
                              sentOtpController.sentOtpUser(mobile_number: mobileNumberController.text);
                        } else {
                          Get.snackbar("Please fill all the fields", "",
                              snackPosition: SnackPosition.BOTTOM,
                              colorText: Colors.white,
                              backgroundColor: Colors.red);
                        }

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const SignUpOtp()),
                        // );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 50,
                          width: size.width,
                          child: Center(
                              child: Text(
                            "Next",
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
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
