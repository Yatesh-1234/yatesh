import 'package:chatapplication/login.dart';
import 'package:chatapplication/textcard.dart';
import 'package:chatapplication/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   final controller = Get.put(LoginController());
  final FirebaseAuth auth = FirebaseAuth.instance;
  get user => auth.currentUser;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  TextEditingController userConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Textfieldform(
                  hintText: 'Enter Email Address',
                  controller: userEmail,
                ),
                Textfieldform(
                  hintText: 'Enter Password',
                  controller: userPassword,
                ),
                Textfieldform(
                  hintText: 'Confirm Password',
                  controller: userConfirmPassword,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: ()  {
                          controller.signUp(emailAddress: userEmail.text,password: userConfirmPassword.text);
                         
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: TextCard(
                          data: "Register",
                          fontsize: 20,
                        )),
                  ),
                ),
              ]),
        ),
      ),
    ));
  }
}
