import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:lixo_study/firebase_options.dart';
import 'package:lixo_study/screens/mainpage.dart';
import 'package:get/get.dart';
import 'package:lixo_study/screens/signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const LixoStudy());
}

class LixoStudy extends StatelessWidget {
  const LixoStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Lixo Study",
      debugShowCheckedModeBanner: false,
      home: SignupPage(),
    );
  }
}
