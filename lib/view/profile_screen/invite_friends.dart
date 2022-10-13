import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteFriend extends StatefulWidget {
  const InviteFriend({super.key});

  @override
  State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        return Container(
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
                                "Invite Friends",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
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
                height: 250,
                width: 250,
                child: Image(
                       image:
                        AssetImage("assets/image/invite-friend.png"),
                        fit: BoxFit.fill,),
              ),
              

                  SizedBox(height: 25,),
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
                          SizedBox(height: 15,),
                  Text(
                            "Share your code with your friends and \n ""get exciting bonus points !",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              color: Color(0xff515C6F),
                              fontWeight: FontWeight.w500,
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
                          padding: const EdgeInsets.only(left: 40,right: 40),
                          child: Container(
                            height: 40,
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
                      SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Or",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Color(0xff515C6F),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Image(image: AssetImage("assets/image/Group 3496.png")),
                                  SizedBox(height: 5,),
                                  Text(
                                       "Whatsapp",
                                      style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: Color(0xff000000),
                                      //fontWeight: FontWeight.w500,
                            ),
                          ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image(image: AssetImage("assets/image/Group 3497.png")),
                                   SizedBox(height: 5,),
                                  Text(
                                       "Facebook",
                                      style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: Color(0xff000000),
                                      //fontWeight: FontWeight.w500,
                            ),
                          ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image(image: AssetImage("assets/image/Group 3498.png")),
                                   SizedBox(height: 5,),
                                  Text(
                                       "Email",
                                      style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: Color(0xff000000),
                                      //fontWeight: FontWeight.w500,
                            ),
                          ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image(image: AssetImage("assets/image/Group 3499.png")),
                                   SizedBox(height: 5,),
                                  Text(
                                       "Messenger",
                                      style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: Color(0xff000000),
                                      //fontWeight: FontWeight.w500,
                            ),
                          ),
                                ],
                              ),
                            ],
                          ),

            ]
          )
        );
      }),
    );
  }
}