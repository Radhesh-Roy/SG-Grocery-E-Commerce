import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/splash_controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final GetxSplashScreen splash= Get.put(GetxSplashScreen());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Image(
            image: AssetImage("assets/Splash.png",),),
        ),
      ),

    );
  }
}
