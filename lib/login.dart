import 'package:chatapplication/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';


class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  signUp({
    String? emailAddress,
    String? password,
  }) async {
    try {
      UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress.toString(),
        password: password.toString(),
      );
      if (credential.user != null) {
        print('abcd     ${credential.user}');  
        Get.to(MyWidget());
      }
    } on FirebaseAuthException catch (e) {
      print('abcd       ${e.toString()}');
    } catch (e) {
     print('abcd2       ${e.toString()}');
    }
  }




  signIn({
    String? emailAddress = 'jay1@gmail.com',
    String? password = '123456789',
  }) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailAddress.toString(), password: password.toString());
      if (credential.user != null) {
     Get.to(MyWidget());
        print('${credential.user!.email}');
      }
      else{
        print('abcd   invalid');
      }
    } on FirebaseAuthException catch (e) {
     print('abcd     $e');
    }
  }
}