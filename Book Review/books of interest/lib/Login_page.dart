import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/auth_controller.dart';
import 'package:flutter_application_1/signup_page.dart';
import 'package:flutter_application_1/welcome_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double W = MediaQuery.of(context).size.width;
    double H = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: W,
              height: H * 0.3,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  image: DecorationImage(
                // ignore: prefer_const_constructors
                image: AssetImage('img/login4.png'),
                fit: BoxFit.cover,
              )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: W,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: H * 0.01,
                  ),
                  Text(
                    "Hello, Welcome To MathRoundOff",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: H * 0.01,
                  ),
                  Text(
                    "Sign into Your Account",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      color: Colors.grey[500],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintText: "Enter Your Email Id:",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.lightBlueAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: passwordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password:",
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.lightBlueAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Forgot your password?",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: H * 0.1,
                  ),
                  Row(children: [
                    SizedBox(
                      width: W * 0.2,
                    ),
                    GestureDetector(
                        onTap: () {
                          AuthController.instance.login(
                              emailcontroller.text.trim(),
                              passwordcontroller.text.trim());
                        },
                        child: Container(
                          width: W * 0.5,
                          height: H * 0.06,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              // ignore: prefer_const_constructors
                              image: DecorationImage(
                                // ignore: prefer_const_constructors
                                image: AssetImage('img/picbutton.webp'),
                                fit: BoxFit.cover,
                              )),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ))
                  ]),
                ],
              ),
            ),
            SizedBox(height: H * 0.04),
            Container(
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[500],
                    ),
                    children: [
                      TextSpan(
                          text: "Create One",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'GoogleSans',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => SignUpPage())),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailcontroller.text.trim(),
  //       password: passwordcontroller.text.trim());
  // }
}