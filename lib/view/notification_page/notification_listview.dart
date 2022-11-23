import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/notification_model.dart';

class NotificationListView extends StatefulWidget {
  List<Notify> notify;
   NotificationListView({super.key,required this.notify});

  @override
  State<NotificationListView> createState() => _NotificationListViewState();
}

class _NotificationListViewState extends State<NotificationListView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: widget.notify.length,
        itemBuilder: ((context, index) {
        return Column(
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
                                                  Text(widget.notify[index].createdAt.toString(),
                                                  style: GoogleFonts.montserrat(fontSize: 10,
                                                  //fontWeight: FontWeight.normal,
                                                  color: Color(0xffB3B3B3)
                                                  ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              widget.notify[index].message,
                                            //  "New Products Purchase Complete\nThankyou For Orders....",
                                             style:GoogleFonts.montserrat(fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xff000000)
                                                  ),
                                            ),
                                            Text(
                                              widget.notify[index].updatedAt.toString(),
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
        );
      }),
      ),
    );
  }
}