// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:ttsfarmcare/constants/app_colors.dart';

// class EditProfile extends StatefulWidget {
//   const EditProfile({super.key});

//   @override
//   State<EditProfile> createState() => _EditProfileState();
// }

// class _EditProfileState extends State<EditProfile> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Column(
//         children: [
//           Stack(
//             children: [
//               Image(image: AssetImage("assets/images/Group 3361.png")),
//               Padding(
//                 padding: const EdgeInsets.only(top: 50, left: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
                      
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             Get.back();
//                           },
//                           child: Icon(
//                             Icons.arrow_back,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Text(
//                           "Edit Profile",
//                           style: TextStyle(
//                             fontSize: 25,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
                        
//                       ],
//                     ),
//                     Image(image: AssetImage("assets/images/Group 3466.png")),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             child: ListView(
//               shrinkWrap: true,
//               children: [
//                 Stack(
//                   children:[ 
//                     CircleAvatar(
//                     radius: 70.r,
//                     backgroundImage:AssetImage("assets/image/NoPath.png"),
//                   ),
//                   Positioned(
//                     left: 95,
//                     top: 100,
//                     child: Container(
//                       height: 40.h,
//                       width: 40.w,
//                       child: Icon(Icons.camera_alt_rounded),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20)
//                       ),
//                     ),
//                   ),
//                   ]
//                 ),
//                 SizedBox(height: 10.h,),
//                 Text(
//                             "Change your picture",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                       SizedBox(height: 20,),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 10,left: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                             "Name",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                                color: const Color(0xff7D7979),
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(height: 3.h,),
//                             Container(
//                               height: 50.h,
//                               width: size.width.w,
//                               child: TextField(
//                                // controller: usernamecontroller,
//                                 decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: darkGreenColor,
//                                     ),
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   hintText: "Flat, Building, Company, Apartment",
//                                   hintStyle: TextStyle(
//                                     color: const Color(0xff7D7979),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 10,left: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                             "Name",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                                color: const Color(0xff7D7979),
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(height: 3.h,),
//                             Container(
//                               height: 50.h,
//                               width: size.width.w,
//                               child: TextField(
//                                // controller: usernamecontroller,
//                                 decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: darkGreenColor,
//                                     ),
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   hintText: "Flat, Building, Company, Apartment",
//                                   hintStyle: TextStyle(
//                                     color: const Color(0xff7D7979),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 10,left: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                             "Name",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                                color: const Color(0xff7D7979),
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(height: 3.h,),
//                             Container(
//                               height: 50.h,
//                               width: size.width.w,
//                               child: TextField(
//                                // controller: usernamecontroller,
//                                 decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: darkGreenColor,
//                                     ),
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   hintText: "Flat, Building, Company, Apartment",
//                                   hintStyle: TextStyle(
//                                     color: const Color(0xff7D7979),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 10,left: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                             "Name",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                                color: const Color(0xff7D7979),
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(height: 3.h,),
//                             Container(
//                               height: 50.h,
//                               width: size.width.w,
//                               child: TextField(
//                                // controller: usernamecontroller,
//                                 decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: darkGreenColor,
//                                     ),
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   hintText: "Flat, Building, Company, Apartment",
//                                   hintStyle: TextStyle(
//                                     color: const Color(0xff7D7979),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 10,left: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                             "Name",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                                color: const Color(0xff7D7979),
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(height: 3.h,),
//                             Container(
//                               height: 50.h,
//                               width: size.width.w,
//                               child: TextField(
//                                // controller: usernamecontroller,
//                                 decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: darkGreenColor,
//                                     ),
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   hintText: "Flat, Building, Company, Apartment",
//                                   hintStyle: TextStyle(
//                                     color: const Color(0xff7D7979),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 10,left: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                             "Name",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                                color: const Color(0xff7D7979),
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(height: 3.h,),
//                             Container(
//                               height: 50.h,
//                               width: size.width.w,
//                               child: TextField(
//                                // controller: usernamecontroller,
//                                 decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: darkGreenColor,
//                                     ),
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   hintText: "Flat, Building, Company, Apartment",
//                                   hintStyle: TextStyle(
//                                     color: const Color(0xff7D7979),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 10,left: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                             "Name",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                                color: const Color(0xff7D7979),
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(height: 3.h,),
//                             Container(
//                               height: 50.h,
//                               width: size.width.w,
//                               child: TextField(
//                                // controller: usernamecontroller,
//                                 decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: darkGreenColor,
//                                     ),
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   hintText: "Flat, Building, Company, Apartment",
//                                   hintStyle: TextStyle(
//                                     color: const Color(0xff7D7979),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
                
//               ],
//             ),
//           ),
//         ]),
//     );
//   }
// }