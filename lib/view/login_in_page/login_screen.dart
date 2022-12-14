import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttsfarmcare/constants/app_colors.dart';
import 'package:ttsfarmcare/controllers/login_api_controllers/login_controller.dart';
import 'package:ttsfarmcare/view/home_Screen/signUp_screen.dart';
import '../forgot_password_page/forgot_password_page.dart';
import '../home_Screen/home_page.dart';
import '../sign_in_view/loading_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheked = false;
  bool _isHidden = true;

  final loginController = Get.find<LoginController>();

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  
 bool isPwd = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordcontroller.addListener(validatePwd);
    _loadUserEmailPassword();
  }

  validatePwd(){
   if(passwordcontroller.text.length > 7){
         setState(() {
           isPwd = true;
         });
   }else{
     setState(() {
       isPwd = false;
     });
   }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 120),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Image(
                image: AssetImage(
                  "assets/icons/img.png",
                ),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Center(
              child: Image(
                height: 200,
                image: AssetImage(
                  "assets/images/zxc.png",
                ),
              ),
            ),
          ),
          toolbarHeight: 200,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            color: Colors.white,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/top img.png"),
                      fit: BoxFit.fill),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(70))),
            ),
          )),
      body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bottom img.png"),
                  fit: BoxFit.fill),
            ),
            child: KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        // top: isKeyboardVisible ? 10 : 50,
                        // bottom: isKeyboardVisible ? 100 : 0),
                       ),
                    child: ListView(
                      shrinkWrap: true,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                     // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        
                        Text(
                          "Welcome back",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, fontSize: 40.sp),
                        ),
                        Text(
                          "Login to your account",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailcontroller,
                              cursorColor: darkGreenColor,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: darkGreenColor, width: 1.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Color(0xff517937), width: 0.7)),
                                filled: true,
                                isDense: true,
                                fillColor: Color(0xffECF2F0),
                                hintText: "Email / Phone Number",
                                hintStyle: GoogleFonts.montserrat(
                                  color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: 50,
                            width: size.width,
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              // inputFormatters: [
                              //   LengthLimitingTextInputFormatter(8),
                              // ],
                              cursorColor: darkGreenColor,
                              obscureText: _isHidden,
                              controller: passwordcontroller,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: darkGreenColor, width: 1.5)),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Color(0xff517937), width: 0.7),
                                ),
                                filled: true,
                                isDense: true,
                                fillColor: Color(0xffECF2F0),
                                hintText: "Password",
                                suffixIcon: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    _isHidden
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color(0xff517937),
                                  ),
                                ),
                                hintStyle: GoogleFonts.montserrat(
                                  color: const Color(0xff517937),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (isPwd == false && passwordcontroller.text.isNotEmpty)Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("password must be 8 characters",
                        style: TextStyle(color: Colors.red),
                  ),
                ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Checkbox(
                                      activeColor: Color(0xff517937),
                                      value: isCheked,
                                      onChanged: _handleRemeberme,
                                      // onChanged: (value) {
                                      //   setState(() {
                                      //     isCheked = !isCheked;
                                      //   });
                                      // }
                                      ),
                            Text(
                              "Remeber Me",
                              style: GoogleFonts.montserrat(),
                            ),
                                ],
                              ),
                            ),
                           
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextButton(
                                onPressed: () {
                                  Get.to(()=> ForgotPasswordScreen(),
                                  //transition: Transition.size
                                  );
                                },
                                child: Text(
                                  "Forgot Password",
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xff517937),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:constraints.maxHeight>500 ? 60.h : 40.h
                        ),
                        InkWell(
                          onTap: () {
                            if (emailcontroller.text.isNotEmpty &&
                                passwordcontroller.text.isNotEmpty) {
                              if (isPwd) {
                           loginController.loginUser(
                           email: emailcontroller.text,
                         password: passwordcontroller.text);
                          }
                            } else {
                              Get.snackbar("Please fill all the fields", "",
                                  snackPosition: SnackPosition.BOTTOM,
                                  colorText: Colors.white,
                                  backgroundColor: Colors.red);
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              height: 50,
                              width: size.width,
                              child: Center(
                                  child: Text(
                                "Login",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                ),
                              )),
                              decoration: BoxDecoration(
                                color: const Color(0xff016942),
                                borderRadius: BorderRadius.circular(35),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "did't have an account?",
                              style: GoogleFonts.montserrat(fontSize: 18.sp),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ExamsView()),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.montserrat(
                                  color: Color(0xff016942),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        if(isKeyboardVisible)  Container(
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          );
        }
      ),
    );
  }

   void _handleRemeberme(bool? value) {
    print("Handle Rember Me");
    isCheked = value!;
    SharedPreferences.getInstance().then(
      (prefs) {
        prefs.setBool("remember_me", value);
        prefs.setString('email', emailcontroller.text);
        prefs.setString('password', passwordcontroller.text);
      },
    );
    setState(() {
      isCheked = value;
    });
  }

  void _loadUserEmailPassword() async {
    print("Load Email");
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _email = _prefs.getString("email") ?? "";
      var _password = _prefs.getString("password") ?? "";
      var _remeberMe = _prefs.getBool("remember_me") ?? false;

      print(_remeberMe);
      print(_email);
      print(_password);
      if (_remeberMe) {
        setState(() {
          isCheked = true;
        });
        emailcontroller.text = _email;
        passwordcontroller.text = _password;
      }
    } catch (e) {
      print(e);
    }
  }

}
