import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfProductTwo extends StatefulWidget {
  const ListOfProductTwo({super.key});

  @override
  State<ListOfProductTwo> createState() => _ListOfProductTwoState();
}

class _ListOfProductTwoState extends State<ListOfProductTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 95,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              Container(
                                height: 95,
                                width: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 60,
                                        child: Image.asset(
                                          "assets/images/Group 3478.png",
                                          height: 60,
                                          fit: BoxFit.fitHeight,
                                        )),
                                    Text(
                                      "UREA\nFERTILIZER",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 9,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 70, 174, 243),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 95,
                                width: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 60,
                                        child: Image.asset(
                                          "assets/images/Group 3477.png",
                                          height: 60,
                                          fit: BoxFit.fitHeight,
                                        )),
                                    Text(
                                      "PAANDAV",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 240, 118, 18),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 95,
                                width: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 60,
                                        child: Image.asset(
                                          "assets/images/Group 3476.png",
                                          height: 60,
                                          fit: BoxFit.fitHeight,
                                        )),
                                    Text(
                                      "SEEDS",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff58D96A),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 95,
                                width: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            "assets/images/Group 3475.png")),
                                    Text(
                                      "JEEVAN",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 250, 49, 206),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 95,
                                width: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 60,
                                        child: Image.asset(
                                          "assets/images/Group 3478.png",
                                          height: 60,
                                          fit: BoxFit.fitHeight,
                                        )),
                                    Text(
                                      "UREA\nFERTILIZER",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 9,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 70, 174, 243),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 95,
                                width: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 60,
                                        child: Image.asset(
                                          "assets/images/Group 3477.png",
                                          height: 60,
                                          fit: BoxFit.fitHeight,
                                        )),
                                    Text(
                                      "PAANDAV",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 240, 118, 18),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 95,
                                width: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 60,
                                        child: Image.asset(
                                          "assets/images/Group 3476.png",
                                          height: 60,
                                          fit: BoxFit.fitHeight,
                                        )),
                                    Text(
                                      "SEEDS",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff58D96A),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 95,
                                width: 85,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            "assets/images/Group 3475.png")),
                                    Text(
                                      "JEEVAN",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 250, 49, 206),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
      ],
    );
  }
}