import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../firebase_service.dart';

class RegController extends GetxController{

  RxBool isVisibile=true.obs;
  RxBool isVisibileC=true.obs;



  TextEditingController nameC= TextEditingController();
  TextEditingController emailC= TextEditingController();
  TextEditingController passC= TextEditingController();
  TextEditingController confirmPassC= TextEditingController();
  TextEditingController phoneC= TextEditingController();


  void setData(){
    db.ref("registration").child("user").push().set(
        {
          "name": nameC.text,
          "email":emailC.text,
          "password":passC.text,
          "confirmPassword":confirmPassC.text,
          "phone":phoneC.text
        });
  }


  void passvisible(){
    isVisibile.value=!isVisibile.value;
  }
  void confirmPassvisible(){
    isVisibileC.value=!isVisibileC.value;
  }

   passMatching(){
    if(passC == confirmPassC && confirmPassC== passC){
      return true;
    }
    else{
      log("password and Confirm Pass are not same");
    }

  }

  @override
  void onInit() {
   setData();
    super.onInit();
  }





}