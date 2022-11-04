import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../models/all_product_model.dart';
import '../about_product/about_product.dart';

class ProductGridView extends StatefulWidget {

  List<ProductData> productList;

  ProductGridView({super.key,required this.productList});

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.76,
          mainAxisSpacing: 10
        ),
        itemCount:widget.productList.length,
         itemBuilder: (context,index){
       return Padding(
         padding: const EdgeInsets.only(left: 10,right: 10),
         child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AboutProduct(
                                image: "assets/images/asset-3.png",
                                productData:widget.productList[index],
                               // name: "Micro Nutrition Valorous",
                              )),
                    );
                  },
                  child: Container(
                   decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff517937)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image(image: AssetImage("assets/images/asset-3.png")),
                          ),
                          Container(
                            width: 80,
                            child: Text(
                              widget.productList[index].name,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 60,
                            ),
                            child: Text(
                              widget.productList[index].quantity,
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5, left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 17,
                                  width: 52,
                                  child: Text(
                                    "Price:${widget.productList[index].price}",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      color: darkGreenColor,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xffECF2F0),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: darkGreenColor,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ),
                ),
       );
      }),
    );
  }
}