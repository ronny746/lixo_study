import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lixo_study/screens/mainpage.dart';
import 'package:lixo_study/screens/signup_page.dart';

import '../utils/constants.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  var box = GetStorage();

  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      var token = box.read("token");
      print(token);
      if(token!=null){
        BoxToken = token;
        Get.to(
              () => MainPage(),
          duration: Duration(seconds: 1),
          transition: Transition.fadeIn,
        );
      }else{
        Get.to(
              () => SignupPage(),
          duration: Duration(seconds: 1),
          transition: Transition.fadeIn,
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).highlightColor,
      body: SafeArea(
        child: Center(
          child: Image.asset("assets/Lixo Study.png"),
        ),
      ),
    );
  }
}
