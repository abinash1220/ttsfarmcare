import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
        title: Text("Notifications",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                      child: Container(
                        height: 35,
                        child: TextFormField(
                          
                          decoration: InputDecoration(
                            isCollapsed: true,
                            filled: true,
                            isDense: true,
                           fillColor: const Color(0xffF2F2F2),
                            hintText: "SEARCH",
                            contentPadding: EdgeInsets.only(top: 7),
                            prefixIcon: Icon(Icons.search,size: 20,),
                            suffixIcon: Container(
                              height: 50,
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Today(2)",
                                    style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Color(0xffB3B3B3),
                            ),
                                    ),
                                    Image(image: AssetImage("assets/icons/NAV.png"))
                                  ],
                                ),
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Color(0xffB3B3B3),
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                    height: size.height*0.74,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Column(
                      children: [
                        Slidable(
                          child: Container(
                            height: 90,
                            width:size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(image: AssetImage("assets/image/Clip.png")),
                                  
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: size.width*0.65,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Mohan Kich",
                                              style:GoogleFonts.montserrat(fontSize: 13,
                                              fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Text("just now",
                                              style: GoogleFonts.montserrat(fontSize: 10,
                                              //fontWeight: FontWeight.normal,
                                              color: Color(0xffB3B3B3)
                                              ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text("New Products Purchase Complete\nThankyou For Orders....",
                                         style:GoogleFonts.montserrat(fontSize: 11,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xff000000)
                                              ),
                                        ),
                                        Text("29/09/2022",
                                        style:GoogleFonts.montserrat(fontSize: 11,
                                              //fontWeight: FontWeight.normal,
                                              color: Color(0xffB3B3B3)
                                              ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  
                                ]
                                ),
                                
                            ),
                            decoration: BoxDecoration(
                              color:Colors.white,
                              border: Border.all(color: Color.fromARGB(255, 231, 230, 230))
                              ),
                          ),
                          endActionPane: ActionPane(
                            extentRatio: 0.15,
                          motion: const ScrollMotion(),
                          children: [
                             SlidableAction(
                          onPressed: (val){
                          },
                          backgroundColor: Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon:CupertinoIcons.delete,
                         
                        ),
                          ],

                         )
                        ),
                        SizedBox(height: 10,),
                        Slidable(
                          child: Container(
                            height: 90,
                            width:size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(image: AssetImage("assets/image/IMG.png")),
                                  
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: size.width*0.65,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Mika Williams",
                                              style:GoogleFonts.montserrat(fontSize: 13,
                                              fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              Text("09:19",
                                              style:GoogleFonts.montserrat(fontSize: 10,
                                              //fontWeight: FontWeight.normal,
                                              color: Color(0xffB3B3B3)
                                              ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text("New Products Purchase Complete\nThankyou For Orders....",
                                         style:GoogleFonts.montserrat(fontSize: 11,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xff000000)
                                              ),
                                        ),
                                        Text("29/09/2022",
                                        style:GoogleFonts.montserrat(fontSize: 11,
                                              //fontWeight: FontWeight.normal,
                                              color: Color(0xffB3B3B3)
                                              ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  
                                ]
                                ),
                                
                            ),
                            decoration: BoxDecoration(
                              color:Colors.white,
                              border: Border.all(color: Color.fromARGB(255, 231, 230, 230))
                              ),
                          ),
                          endActionPane: ActionPane(
                            extentRatio: 0.15,
                           
                          motion: const ScrollMotion(),
                          children: [
                             SlidableAction(
                              
                          onPressed: (val){
                          },
                          backgroundColor: Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon:CupertinoIcons.delete,
                         
                        ),
                          ],

                         )
                        ),
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Container(
                            height: 30,
                            width: size.width,
                            color: Color(0xffF2F2F2),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Yesterday(3)",
                                      style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: Color(0xffB3B3B3),
                            ),
                                      ),
                                      SizedBox(width: 50,),
                                       Image(image: AssetImage("assets/images/down-arrow.png"),
                                       color: Color(0xffB3B3B3),),
                                    ],
                                  ),
                                  Image(image: AssetImage("assets/icons/Group 3500.png"))
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25,right: 25),
                          child: Column(
                            children:[
                          Slidable(
                            child: Container(
                              height: 90,
                              width:size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(image: AssetImage("assets/image/Clip-1.png")),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: size.width*0.65,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Mika Williams",
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 13,
                                                fontWeight: FontWeight.bold
                                                ),
                                                ),
                                                Text("09:19",
                                                style: GoogleFonts.montserrat(fontSize: 10,
                                                //fontWeight: FontWeight.normal,
                                                color: Color(0xffB3B3B3)
                                                ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text("New Products Purchase Complete\nThankyou For Orders....",
                                           style:GoogleFonts.montserrat(fontSize: 11,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff000000)
                                                ),
                                          ),
                                          Text("29/09/2022",
                                          style:GoogleFonts.montserrat(fontSize: 11,
                                                //fontWeight: FontWeight.normal,
                                                color: Color(0xffB3B3B3)
                                                ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    
                                  ]
                                  ),
                                  
                              ),
                              decoration: BoxDecoration(
                                color:Colors.white,
                                border: Border.all(color: Color.fromARGB(255, 231, 230, 230))
                                ),
                            ),
                            endActionPane: ActionPane(
                              extentRatio: 0.15,

                            motion: const ScrollMotion(),
                            children: [
                               SlidableAction(
                            onPressed: (val){
                            },
                            backgroundColor: Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon:CupertinoIcons.delete,
                        
                          ),
                            ],

                           )
                          ),
                          SizedBox(height: 10,),
                          Slidable(
                            child: Container(
                              height: 90,
                              width:size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(image: AssetImage("assets/image/Clip-2.png")),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: size.width*0.65,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Nikky Rayes",
                                                style:GoogleFonts.montserrat(fontSize: 13,
                                                fontWeight: FontWeight.bold
                                                ),
                                                ),
                                                Text("11:15",
                                                style:GoogleFonts.montserrat(fontSize: 10,
                                                //fontWeight: FontWeight.normal,
                                                color: Color(0xffB3B3B3)
                                                ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text("New Products Purchase Complete\nThankyou For Orders....",
                                           style:GoogleFonts.montserrat(fontSize: 11,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff000000)
                                                ),
                                          ),
                                          Text("19/09/2022",
                                          style:GoogleFonts.montserrat(fontSize: 11,
                                                //fontWeight: FontWeight.normal,
                                                color: Color(0xffB3B3B3)
                                                ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    
                                  ]
                                  ),
                                  
                              ),
                              decoration: BoxDecoration(
                                color:Colors.white,
                                border: Border.all(color: Color.fromARGB(255, 231, 230, 230))
                                ),
                            ),
                            endActionPane: ActionPane(
                              extentRatio: 0.15,

                            motion: const ScrollMotion(),
                            children: [
                               SlidableAction(
                            onPressed: (val){
                            },
                            backgroundColor: Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon:CupertinoIcons.delete,
                           
                          ),
                            ],

                           )
                          ),
                          SizedBox(height: 10,),
                          Slidable(
                            child: Container(
                              height: 90,
                              width:size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image(image: AssetImage("assets/image/Clip-3.png")),
                                    
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: size.width*0.65,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Vila Mohas",
                                                style:GoogleFonts.montserrat(fontSize: 13,
                                                fontWeight: FontWeight.bold
                                                ),
                                                ),
                                                Text("10:19",
                                                style:GoogleFonts.montserrat(fontSize: 10,
                                                //fontWeight: FontWeight.normal,
                                                color: Color(0xffB3B3B3)
                                                ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text("New Products Purchase Complete\nThankyou For Orders....",
                                           style:GoogleFonts.montserrat(fontSize: 11,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff000000)
                                                ),
                                          ),
                                          Text("28/09/2022",
                                          style:GoogleFonts.montserrat(fontSize: 11,
                                                //fontWeight: FontWeight.normal,
                                                color: Color(0xffB3B3B3)
                                                ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    
                                  ]
                                  ),
                                  
                              ),
                              decoration: BoxDecoration(
                                color:Colors.white,
                                border: Border.all(color: Color.fromARGB(255, 231, 230, 230))
                                ),
                            ),
                            endActionPane: ActionPane(
                              extentRatio: 0.15,

                            motion: const ScrollMotion(),
                            children: [
                               SlidableAction(
                            onPressed: (val){
                            },
                            backgroundColor: Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon:CupertinoIcons.delete,
                           
                          ),
                            ],

                           )
                          ),
                            ]
                          ),
                        ),
                ],
              ),
            ),
                  ]),
            ),
            ),
    );
  }
}