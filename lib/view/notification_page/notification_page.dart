import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/controllers/notification_api_controllers/notification_api_controller.dart';
import 'package:ttsfarmcare/view/notification_page/admin_notification_listview.dart';
import 'package:ttsfarmcare/view/notification_page/notification_listview.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  final notifycation = Get.find<NotificationControllers>();

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
     WidgetsBinding.instance
        .addPostFrameCallback((_) => getOrder());
  }

  getOrder(){
    notifycation.getNotification();
  }

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
          body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
              return Container(
                   decoration: BoxDecoration(
                  color: Color(0xff289445),
        ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
                      child: Column(
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
                          child: Container(
                            height: 35,
                            color: Color(0xffF2F2F2),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Notifications",
                                   style: GoogleFonts.montserrat(
                                   fontWeight: FontWeight.bold,
                                   color: Color(0xffB3B3B3)
                                   ),
                                ),
            Image(image: AssetImage("assets/icons/NAV.png"))
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                        height:constraints.maxHeight>570 ? size.height*0.44 : size.height*0.40,
                  child: GetBuilder<NotificationControllers>(
                      builder: (_) {
                        return NotificationListView(notify:notifycation.notify,);
                      }
                    ),
                ),
                 Padding(
                          padding: const EdgeInsets.only(top: 10,left: 15,right: 15,bottom: 10),
                          child: Container(
                            height: 35,
                            color: Color(0xffF2F2F2),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Admin Notifications",
                                   style: GoogleFonts.montserrat(
                                   fontWeight: FontWeight.bold,
                                   color: Color(0xffB3B3B3)
                                   ),
                                ),
            Image(image: AssetImage("assets/icons/Group 3500.png"))
                                ],
                              ),
                            ),
                          ),
                        ),
                 Container(
                        height:constraints.maxHeight>570 ? size.height*0.24 : size.height*0.21,
                  child: GetBuilder<NotificationControllers>(
                      builder: (_) {
                        return AdminNotificationListView(adminNotify:notifycation.adminNotify,);
                      }
                    ),
                ),
                      ]),
                ),
                );
            }
          ),
    );
  }
}