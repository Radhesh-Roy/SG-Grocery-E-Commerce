import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/firebase_service.dart';

class LoginController extends GetxController {
  RxBool isLoading = true.obs;
  RxList userData = [].obs;
  TextEditingController logEmail = TextEditingController();
  TextEditingController logPass = TextEditingController();

  Future<void> getData() async {
    final snapshot = await db.ref("registration/user").get();
    if (snapshot.exists) {
      Map data = snapshot.value as Map;
      bool isFound = false;
      data.forEach((key, value) {
        if (logEmail.text == value["email"] && logPass.text == value["password"]) {
          isFound = true;
        }
      });
      if (isFound) {
        Get.snackbar("Login Success", "Welcome");
        log("login Success");
        Get.offAllNamed("/bottomBar");
      } else {
        Get.snackbar("Login Failed", "Enter Correct Email and Password");
        log("login Failed");
      }
    } else {
      log("No Data");
    }
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }
}
