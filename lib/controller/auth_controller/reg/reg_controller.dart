import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../firebase_service.dart';

class RegController extends GetxController{

  RxBool isVisibile=true.obs;


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


  void checkVisible(){
    isVisibile.value=!isVisibile.value;
  }
  @override
  void onInit() {
   setData();
    super.onInit();
  }





}