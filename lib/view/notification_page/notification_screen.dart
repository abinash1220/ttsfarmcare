import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/app_colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                  ? size.height * 0.21
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
                    padding:
                        const EdgeInsets.only(top: 50, left: 10, right: 10),
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
                              "Notification",
                              style:GoogleFonts.montserrat(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Image(
                            image: AssetImage("assets/images/Group 3466.png")),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 140,left: 15,right: 15),
                      child: Container(
                        height: 35,
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                           fillColor: const Color(0xffF2F2F2),
                            // border: OutlineInputBorder(
                            //   borderSide: BorderSide(color:Colors.white),
                            //   borderRadius: BorderRadius.circular(10),
                            // ),
                            hintText: "SEARCH",
                            
                            

                            contentPadding: EdgeInsets.only(top: 5),
                            prefixIcon: Icon(Icons.search,size: 20,),
                          //  suffixText: "Today(2)",
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
                              
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              height: constraints.maxHeight > 600
                  ? size.height * 0.75
                  : size.height * 0.7,
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
                                  Text("Yesterday(3)",
                                  style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: Color(0xffB3B3B3),
                             
                            ),
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
        );
      }),
    );
  }
}
