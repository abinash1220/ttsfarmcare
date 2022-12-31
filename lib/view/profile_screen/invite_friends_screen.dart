import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class InviteFriendsScreen extends StatefulWidget {
  const InviteFriendsScreen({super.key});

  @override
  State<InviteFriendsScreen> createState() => _InviteFriendsScreenState();
}

class _InviteFriendsScreenState extends State<InviteFriendsScreen> {
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
       title: Text("Invite Friends",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ),
            ),
            titleSpacing: -10,
            actions: [
              //  Padding(
              //    padding: const EdgeInsets.only(right: 20),
              //    child: Image(
              //     height: 45,width: 45,
              //     image: AssetImage("assets/images/Group 3470.png")),
              //  ),
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
          body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
          print(constraints.maxWidth);
              return Container(
                   decoration: BoxDecoration(
                  color: Color(0xff289445),
        ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40,bottom: 60),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                    height:constraints.maxHeight>570 ? 250.h :200,
                    width:250.w,
                    child: Image(
                               image:
                                AssetImage("assets/image/invite-friend.png"),
                                fit: BoxFit.fill,),
                  ),
                  

                          Text(
                                    "Invite your friends and \n"
                                    "get bonus points !",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 25,
                                      color: Color(0xff3D3D3E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                          Text(
                                    "Share your code with your friends and \n ""get exciting bonus points !",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 13,
                                      color: Color(0xff515C6F),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  InkWell(
                                onTap: (){
                                 Share.share("Download this app https://play.google.com/store/apps/details?id=com.b2e_hub.android");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 40,right: 40),
                                  child: Container(
                                    height: 50,
                                    width:size.width,
                                    child: Center(
                                      child: Text("Invite",
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xff016942),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600
                                      ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff016942),),
                                      borderRadius: BorderRadius.circular(25),
                                      //color: darkGreenColor,
                                    ),
                                  ),
                                ),
                              ),
                              
                            ]
                            ),
                        ),
                      ),
                ),
                );
            }
          ),
    );
  }
}