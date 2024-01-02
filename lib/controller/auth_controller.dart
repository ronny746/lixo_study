import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lixo_study/screens/mainpage.dart';
import 'package:lixo_study/utils/constants.dart';

class AuthController extends GetxController{
  var email = "";
  var password = "";
  var name = "";

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassController = TextEditingController();

  User? user = FirebaseAuth.instance.currentUser;
  var box = GetStorage();

  register() async {
    if(passwordController.text == confirmPassController.text) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        print(userCredential);
        constToast("Registered Successfully.");
        box.write("token",user?.uid);
        Get.off(MainPage());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print("Password Provided is too Weak");
          constToast("Password Provided is too Weak");
        } else if (e.code == 'email-already-in-use') {
          print("Account Already exists");
          constToast("Account Already exists");
        }
      }
    }
    else{
      constToast("Password doesn't match");
    }
  }

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      box.write("token",user?.uid);
      Get.off(MainPage());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No User Found for that Email");
        constToast("No User Found for that Email");
      } else if (e.code == 'wrong-password') {
        print("Wrong Password Provided by User");
        constToast("Wrong Password Provided by User");
      }else if (e.code == 'invalid-credential') {
        print("Invalid Credential");
        constToast("Invalid Credential");
      }else {
        print("error is ${e.code}");
        constToast(e.code);
      }
    }
  }

  logout() async{
    box.erase();
  }

}