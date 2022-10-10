import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';

class CustomerSupport extends StatefulWidget {
  const CustomerSupport({super.key});

  @override
  State<CustomerSupport> createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<CustomerSupport> {
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
                                "Customer Support",
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
                height: 250,
                width: 270,
                child: Image(
                      image:
                        AssetImage("assets/image/invite (2).png"),
                        fit: BoxFit.fill,),
              ),
              SizedBox(height: 10,),
              Padding(
                        padding: const EdgeInsets.only(right: 25,left: 25),
                        child: Container(
                          height: 50,
                          width: size.width,
                          child: TextFormField(
                            // controller: usernamecontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Enter name",
                              hintStyle: TextStyle(
                                  //color: const Color(0xff517937),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
              Padding(
                        padding: const EdgeInsets.only(right: 25,left: 25),
                        child: Container(
                          height: 50,
                          width: size.width,
                          child: TextFormField(
                            // controller: usernamecontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Email ID",
                              hintStyle: TextStyle(
                                  //color: const Color(0xff517937),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
              Padding(
                        padding: const EdgeInsets.only(right: 25,left: 25),
                        child: Container(
                          height: 100,
                          width: size.width,
                          child: TextFormField(
                            maxLines: 500,
                            // controller: usernamecontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Message",
                              hintStyle: TextStyle(
                                  //color: const Color(0xff517937),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      InkWell(
                            onTap: (){
                              // Navigator.push(
                              //            context,
                              //            MaterialPageRoute(builder: (context) => const ProfileScreen()),
                              //          );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Container(
                                height: 50,
                                width: size.width,
                                child: Center(
                                  child: Text("Submit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w400
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
            ]),

        );
      }),
    );
  }
}