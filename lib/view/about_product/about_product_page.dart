import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutProductScreen extends StatefulWidget {
  const AboutProductScreen({super.key});

  @override
  State<AboutProductScreen> createState() => _AboutProductScreenState();
}

class _AboutProductScreenState extends State<AboutProductScreen> {
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
                                "About Product",
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
                height: constraints.maxHeight > 600
                    ? size.height * 0.8
                    : size.height * 0.7,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 100,
                         
                          child:Image(image: AssetImage("assets/images/21.png"),
                          fit: BoxFit.fill,
                          ) ,
                        ),
                       // SmoothPageIndicator(controller: , count: count)
                      ],
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
