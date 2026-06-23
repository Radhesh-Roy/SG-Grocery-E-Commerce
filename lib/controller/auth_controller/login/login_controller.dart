import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/auth_controller/reg/reg_controller.dart';
import 'package:sggrocery/firebase_service.dart';
import 'package:sggrocery/view/bottom_bar.dart';
import 'package:sggrocery/view/home/home_page.dart';

class LoginController extends GetxController{

  RxBool isLoading=true.obs;
  RxList userData=[].obs;
  TextEditingController logEmail=TextEditingController();
  TextEditingController logPass=TextEditingController();
  Future<void> GetData()async{
    final snapshot=await db.ref("registration/user").get();
    if(snapshot.exists){
      Map data= snapshot.value as Map;
      bool isFound=false;
      data.forEach((key, value){
        if(logEmail.text== value["email"]&& logPass.text==value["password"]){
          isFound=true;
        };
      });
      if(isFound){
        Get.snackbar("Login Success", "Wellcome");
        log("login Success");
        Get.offAll(BottomBarView());
      }
      else{
        Get.snackbar("login Failed", "Enter Correct Email and Password");
        log("login Failed");
      }
    }
    else{
      log("No Data");
    }
  }
  @override
  void onInit() {
    super.onInit();
    GetData();
  }
}