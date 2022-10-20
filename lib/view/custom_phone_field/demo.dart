import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'intl_phone_field.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {

 var phoneTextController = TextEditingController();
 //final loginViewController = Get.find<LoginViewController>();

  
 String dialCode = "+65";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntlPhoneField(
                                controller: phoneTextController,
                                initialCountryCode: dialCode,
                                decoration: InputDecoration(
                                    hintText: "phone",
                                    enabledBorder: myinputborder(),
                                    focusedBorder: myfocusborder(),
                                    suffixIcon: InkWell(
                                            onTap: () {
                                              phoneTextController.clear();
                                            },
                                            child: const Icon(
                                              CupertinoIcons.xmark_circle_fill,
                                              color: Colors.red,
                                            ),
                                          )
                                        ),
                                onChanged: (phone) {
                                  print(phone.completeNumber);
                                },
                                onCountryChanged: (country) {
                                  print('Country changed to: ' + country.name);
                                 // loginViewController
                                     // .maxlengthOfnumber(country.maxLength);
    
                                  setState(() {
                                     dialCode = "+${country.dialCode}";
                                  });
                                },
                              ),

      ),
    );
  }
}


OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ));
  }

OutlineInputBorder errormyinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.red,
          width: 0.5,
        ));
  }

  OutlineInputBorder errormyfocusborder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.red,
          width: 0.5,
        ));
  }