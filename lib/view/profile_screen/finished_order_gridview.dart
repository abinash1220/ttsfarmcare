// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/basic.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../models/complete_model_screen.dart';
// import '../../models/complete_order_model.dart';
// import '../../models/order_history_model.dart';

// class CompleOrderGritview extends StatefulWidget {
//   List<FinishOrderData> completeorder;
//   CompleOrderGritview({super.key, required this.completeorder});

//   @override
//   State<CompleOrderGritview> createState() => _CompleOrderGritviewState();
// }

// class _CompleOrderGritviewState extends State<CompleOrderGritview> {
//   bool isCheked = true;

//   List image = [
//     "assets/images/21.png",
//     "assets/images/21.png",
//     "assets/images/asset-3.png",
//     "assets/images/asset-3.png",
//     "assets/images/21.png",
//     "assets/images/21.png"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     print(widget.completeorder.length);
//     var size = MediaQuery.of(context).size;
//     return ListView.builder(
//         itemCount: widget.completeorder.length,
//         itemBuilder: (context, index) {
//           return widget.completeorder.length !=0 ? Center(child: Text("Nothing"),) : Container(
//             height: 300,
//             width: size.width,
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Image(image: AssetImage(image[index])),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   height: 110,
//                   width: 1,
//                   color: Color(0xff686868),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Checkbox(
//                             activeColor: Color(0xff517937),
//                             value: isCheked,
//                             onChanged: (value) {}),
//                         Container(
//                           width: size.width * 0.4,
//                           child: Row(
//                             mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 widget.completeorder[index].product.name,
//                                 style: GoogleFonts.poppins(
//                                     fontSize: 12, color: Color(0xff1C1C1E)),
//                               ),
//                               Text(
//                                 "Rating",
//                                 style: GoogleFonts.poppins(
//                                     fontSize: 14, color: Color(0xff515C6F)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Image(
//                             image:
//                                 AssetImage("assets/image/Group 3369.png")),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             widget.completeorder[index].product.title,
//                             style: GoogleFonts.poppins(
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff1C1C1E)),
//                           ),
//                           Text(
//                             "RS 256.98:",
//                             style: GoogleFonts.poppins(
//                                 fontSize: 13, color: Color(0xff0D8446)),
//                           ),
//                           Container(
//                             width: size.width * 0.7,
//                             child: Row(
//                               mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Qty : 01",
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 13,
//                                       color: Color(0xff1C1C1E)),
//                                 ),
//                                 Text(
//                                   widget.completeorder[index].status,
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 13,
//                                       color: Color(0xff0D8446)),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             //
//           );
//         });
//   }
// }
