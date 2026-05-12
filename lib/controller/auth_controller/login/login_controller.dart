import 'dart:developer';

import 'package:get/get.dart';
import 'package:sggrocery/firebase_service.dart';

class LoginController extends GetxController{

  RxBool isLoading=true.obs;

  Future<void> GetData()async{

    final snapshot=await db.ref("registration/user").get();

    if(snapshot.exists){

      Map data= snapshot.value as Map;

      data.forEach((key, value){
        log("userName: ${value["name"]}");
        log("userEmail: ${value["email"]}");

      });
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