import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/view/profile_screen/profile_page.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        return Container(
          height: size.height,
          child: Column(
            children: [
                Container(
                height: constraints.maxHeight > 600
                    ? size.height * 0.2
                    : size.height * 0.3,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                       
                      child: Image(
                        image: AssetImage("assets/images/Group 3361.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              
                            ],
                          ),
                          Image(
                                  image:
                                      AssetImage("assets/images/Group 3466.png")),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
              Container(
                //color: darkGreenColor,
                height: constraints.maxHeight > 600
                    ? size.height * 0.8
                    : size.height * 0.7,
                    alignment: Alignment.topCenter,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                                    children:[ 
                        CircleAvatar(
                          
                        radius: 70.r,
                       backgroundImage:AssetImage("assets/image/NoPath.png"),
                                    ),
                                    Positioned(
                        left: 95,
                        top: 100,
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          child: Icon(Icons.camera_alt_rounded),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                                    ),
                                    ]
                                  ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                       Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                                "Change your picture",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                         ],
                       ),
                       SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 15,left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 16.sp,
                               color: const Color(0xff7D7979),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                               // controller: usernamecontroller,
                                decoration: InputDecoration(
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ), 
                              enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  hintText: "Tts Form Care",
                                  suffixIcon: Icon(Icons.edit,
                                  color: Color(0xff332F2F),
                                  ),
                                  hintStyle: TextStyle(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 15,left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            "Email ID",
                            style: TextStyle(
                              fontSize: 16.sp,
                               color: const Color(0xff7D7979),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                               // controller: usernamecontroller,
                                decoration: InputDecoration(
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ), 
                              enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  hintText: "ttsfarmcare@email.com",
                                  suffixIcon: Icon(Icons.edit,
                                  color: Color(0xff332F2F),
                                  ),
                                  hintStyle: TextStyle(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 15,left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            "Phone Number",
                            style: TextStyle(
                              fontSize: 16.sp,
                               color: const Color(0xff7D7979),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                               // controller: usernamecontroller,
                                decoration: InputDecoration(
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ), 
                              enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  hintText: "9876543210",
                                 
                                  hintStyle: TextStyle(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 15,left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            "Company Name",
                            style: TextStyle(
                              fontSize: 16.sp,
                               color: const Color(0xff7D7979),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                               // controller: usernamecontroller,
                                decoration: InputDecoration(
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ), 
                              enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  hintText: "TTS FARM CARE",
                                  
                                  hintStyle: TextStyle(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 15,left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            "GST",
                            style: TextStyle(
                              fontSize: 16.sp,
                               color: const Color(0xff7D7979),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                               // controller: usernamecontroller,
                                decoration: InputDecoration(
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ), 
                              enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  hintText: "FHD57SA35X8HD",
                                  hintStyle: TextStyle(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 15,left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            "Address",
                            style: TextStyle(
                              fontSize: 16.sp,
                               color: const Color(0xff7D7979),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                               // controller: usernamecontroller,
                                decoration: InputDecoration(
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ), 
                              enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  hintText: "Chennai",
                                  suffixIcon: Icon(Icons.edit,
                                  color: Color(0xff332F2F),
                                  ),
                                  hintStyle: TextStyle(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 15,left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                            "District",
                            style: TextStyle(
                              fontSize: 16.sp,
                               color: const Color(0xff7D7979),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3.h,),
                            Container(
                              height: 50.h,
                              width: size.width.w,
                              child: TextField(
                               // controller: usernamecontroller,
                                decoration: InputDecoration(
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ), 
                              enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: darkGreenColor,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  hintText: "Chennai",
                                  suffixIcon: Icon(Icons.edit,
                                  color: Color(0xff332F2F),
                                  ),
                                  hintStyle: TextStyle(
                                    color: const Color(0xff7D7979),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
                      InkWell(
                            onTap: (){
                              Navigator.push(
                                         context,
                                         MaterialPageRoute(builder: (context) => const ProfileScreen()),
                                       );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Container(
                                height: 50,
                                width: 130,
                                child: Center(
                                  child: Text("Update",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: darkGreenColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                      InkWell(
                            onTap: (){
                              // Navigator.push(
                              //            context,
                              //            MaterialPageRoute(builder: (context) => const PaymentSucessfully()),
                              //          );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Container(
                                height: 50,
                                width: 130,
                                child: Center(
                                  child: Text("Cancel",
                                  style: TextStyle(
                                    color: Color(0xff3F3F3F),
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff3F3F3F),),
                                  borderRadius: BorderRadius.circular(10),
                                  //color: darkGreenColor,
                                ),
                              ),
                            ),
                          ),
                      SizedBox(height: 30,),


                  ],
                ),
              ),
            ]),
        );
      }),
    );
  }
}