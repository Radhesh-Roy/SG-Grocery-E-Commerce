import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/auth_controller/reg/reg_controller.dart';
import 'package:sggrocery/firebase_service.dart';

class RegViewPage extends StatelessWidget {
   RegViewPage({super.key});
   RegController controller=Get.put(RegController());

  final _formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          title: Image.asset("assets/appbar-image.png", height: 53,),
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Register", style: TextStyle(color: Color(0xff55AB60), fontSize: 24, fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),
                  Text("Your Name", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  SizedBox(height: 20,),
                  TextFormField(
                    validator: (value) {
                      if(value==null|| value.isEmpty){
                        return "enter your name";
                      }
                      return null;
                    },
                    controller: controller.nameC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Your Name", hintStyle: TextStyle(color: Color(0xff858FAD))
                    ),
                  ),// Name Field
                  SizedBox(height: 20,),
                  Text("Email Id", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  SizedBox(height: 20,),
                  TextFormField(
                    validator: (value) {
                      if(value == null|| value.isEmpty){
                        return "enter email";
                      }
                      return null;
                    },
                    controller: controller.emailC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Your Email id", hintStyle: TextStyle(color: Color(0xff858FAD))
                    ),
                  ),//Email field
                  SizedBox(height: 20,),
                  Text("Password", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  SizedBox(height: 20,),
                  Obx(()=>TextFormField(
                    obscureText: controller.isVisibile.value,
                    validator: (value) {
                      if(value== null|| value.isEmpty){
                        return "enter password";
                      }
                      return null;
                    },
                    controller: controller.passC,
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Your Password", hintStyle: TextStyle(color: Color(0xff858FAD)),
                        suffixIcon:IconButton(onPressed: (){
                          controller.checkVisible();
                        }, icon: Icon(controller.isVisibile.value?Icons.visibility_off: Icons.visibility))
                    ),
                  ),),//password field
                  SizedBox(height: 20,),
                  Text("Confirm Password", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  SizedBox(height: 20,),
                  TextFormField(
                    validator: (value) {
                      if(value==null|| value.isEmpty){
                        return "conform password";
                      }
                      return null;
                    },
                    controller: controller.confirmPassC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Confirm Your Password", hintStyle: TextStyle(color: Color(0xff858FAD))
                    ),
                  ),//Confirm password field
                  SizedBox(height: 20,),
                  Text("Contact Number", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  SizedBox(height: 20,),
                  TextFormField(
                    validator: (v){
                      if(v==null|| v.isEmpty){
                        return "Enter Phoner";
                      }
                      return null;
                    },
                    controller: controller.phoneC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Your Contact Number", hintStyle: TextStyle(color: Color(0xff858FAD))
                    ),
                  ),// phone number field
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      if(_formKey.currentState!.validate()){
                        return controller.setData();
                      };
                      log("Radhesh Roy");
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff55AB60),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text("Register", style: TextStyle(color: Colors.white, ),)
                      ),
                    ),
                  ),// login Button
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Or Continue With", style: TextStyle(color: Colors.grey),),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ), // Divider
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff55AB60)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/google.png", height: 32, width: 32,),
                                SizedBox(width: 6,),
                                Text("Google", style: TextStyle(fontSize: 18, color: Color(0xff626262)),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff55AB60)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/facebook.png", height: 32, width: 32,),
                                SizedBox(width: 6,),
                                Text("Google", style: TextStyle(fontSize: 18, color: Color(0xff626262)),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),// google facebook
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You Have Already an Account? ", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),),
                      InkWell(
                          hoverColor: Colors.transparent,
                          onTap: (){
                          },
                          child: Text("logIn",style: TextStyle(  fontSize: 16, fontWeight: FontWeight.w700),))
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
