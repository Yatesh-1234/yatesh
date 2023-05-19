// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:chatapplication/login.dart';
import 'package:chatapplication/signup.dart';
import 'package:chatapplication/textcard.dart';
import 'package:chatapplication/textformfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return SafeArea(
              child: Scaffold(
            body: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Textfieldform(
                      hintText: 'Enter Email Address',
                      controller: email,
                    ),

                    Textfieldform(
                      hintText: 'Enter Password',
                      controller: password,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            onPressed: () {
                              controller.signIn();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: TextCard(
                              data: "Sign In",
                              fontsize: 20,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Text.rich(TextSpan(
                          text: "Don't Have Account? ",
                          children: <InlineSpan>[
                            TextSpan(
                                text: "Sign In",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Get.to(SignUp()),
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ))
                          ])),
                    ),
                    //TextCard(color: Colors.red,fontsize: 10,data: 'error')
                  ]),
            ),
          ));
        });
  }
}
