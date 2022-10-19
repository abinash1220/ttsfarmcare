import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_screen.dart';
import 'dart:io' as fl;
import '../../constants/app_colors.dart';
import '../../controllers/profile_controller.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  final ProfileController profile = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
       appBar: AppBar(
        leading: InkWell(
          onTap: () {
          Get.back();
        },
          child: Icon(Icons.arrow_back,)
        ),
        title: Text("Edit Profile",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
            ),
            titleSpacing: -10,
            actions: [
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Image(
                  height: 45,width: 45,
                  image: AssetImage("assets/images/Group 3470.png")),
               ),
            ],
          toolbarHeight: 92,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            color: Colors.white,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xff289445),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40))),
            ),
          )),
          body: Container(
               decoration: BoxDecoration(
              color: Color(0xff289445),
        ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
                          return Container(
                            height: size.height*0.83,
                            child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            Stack(children: [
                              Obx(
                                () => profile.profileImage == ""
                                    ? CircleAvatar(
                                        radius: 70.r,
                                        backgroundImage:
                                            AssetImage("assets/image/NoPath.png"),
                                      )
                                    : CircleAvatar(
                                        radius: 70.r,
                                        backgroundImage:
                                            // AssetImage("assets/image/NoPath.png"),
                                            FileImage(
                                                fl.File(profile.profileImage.value))),
                              ),
                              Positioned(
                                left: 95,
                                top: 100,
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: InkWell(
                                      onTap: () {
                                        profile.pickImage();
                                      },
                                      child: Icon(Icons.camera_alt_rounded)),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          Text(
                            "Change your picture",
                            style: GoogleFonts.montserrat(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: const Color(0xff7D7979),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                 keyboardType: TextInputType.name,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp("[a-z A-Z]"))
                                    ],
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Color(0xff016942),width:0.9),
                        ), 
                                  hintText: "Tts Form Care",
                                  isDense: true,
                                  suffixIcon: Icon(
                                    Icons.edit,
                                    color: Color(0xff332F2F),
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email ID",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: const Color(0xff7D7979),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                   focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Color(0xff016942),width:0.9),
                        ), 
                                  hintText: "ttsfarmcare@email.com",
                                  isDense: true,
                                  suffixIcon: Icon(
                                    Icons.edit,
                                    color: Color(0xff332F2F),
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: const Color(0xff7D7979),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                                // controller: usernamecontroller,
                                 keyboardType: TextInputType.number,
                                    // inputFormatters: [
                                    //   FilteringTextInputFormatter.allow(
                                    //       RegExp("[0-9]"))
                                    // ],
                                    cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                   focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Color(0xff016942),width:0.9),
                        ), 
                                  hintText: "9876543210",
                                  isDense: true,
                                  hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Company Name",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: const Color(0xff7D7979),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                   focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Color(0xff016942),width:0.9),
                        ), 
                                  hintText: "TTS FARM CARE",
                                  isDense: true,
                                  hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "GST",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: const Color(0xff7D7979),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                   focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Color(0xff016942),width:0.9),
                        ), 
                                  hintText: "FHD57SA35X8HD",
                                  isDense: true,
                                  hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: const Color(0xff7D7979),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Color(0xff016942),width:0.9),
                        ), 
                                  hintText: "Chennai",
                                  isDense: true,
                                  suffixIcon: Icon(
                                    Icons.edit,
                                    color: Color(0xff332F2F),
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "District",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: const Color(0xff7D7979),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                                // controller: usernamecontroller,
                                cursorColor: darkGreenColor,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: darkGreenColor,width: 1.5)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Color(0xff016942),width:0.9),
                        ), 
                                  hintText: "Chennai",
                                  isDense: true,
                                  suffixIcon: Icon(
                                    Icons.edit,
                                    color: Color(0xff332F2F),
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()),
                          );
                    },
                    child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 50,
                            width: 130,
                            child: Center(
                              child: Text(
                                "Update",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: darkGreenColor,
                            ),
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                          // Navigator.push(
                          //            context,
                          //            MaterialPageRoute(builder: (context) => const PaymentSucessfully()),
                          //          );
                    },
                    child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 50,
                            width: 130,
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: GoogleFonts.poppins(
                                    color: Color(0xff3F3F3F),
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff3F3F3F),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              //color: darkGreenColor,
                            ),
                          ),
                    ),
                  ),
                  if(isKeyboardVisible)  Container(
                            height: 170,)
                ],
              ),
                          );
                        }
                      ),
                    ]),
            ),
            ),
    );
  }
}