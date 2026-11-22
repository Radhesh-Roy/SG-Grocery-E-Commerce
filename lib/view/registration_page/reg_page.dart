import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/auth_controller/reg/reg_controller.dart';

class RegViewPage extends StatelessWidget {
  const RegViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final RegController controller = Get.put(RegController());
    final formKey = GlobalKey<FormState>();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          title: Image.asset("assets/appbar-image.png", height: 53,),
          centerTitle: true,
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Register", style: TextStyle(color: Color(0xff55AB60), fontSize: 24, fontWeight: FontWeight.w600),),
                  const SizedBox(height: 20,),
                  const Text("Your Name", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  const SizedBox(height: 20,),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter your name";
                      }
                      return null;
                    },
                    controller: controller.nameC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Your Name", hintStyle: const TextStyle(color: Color(0xff858FAD))
                    ),
                  ),// Name Field
                  const SizedBox(height: 20,),

                  const Text("Email Id", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  const SizedBox(height: 20,),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter email";
                      }
                      return null;
                    },
                    controller: controller.emailC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Your Email id", hintStyle: const TextStyle(color: Color(0xff858FAD))
                    ),
                  ),//Email field
                  const SizedBox(height: 20,),

                  const Text("Password", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  const SizedBox(height: 20,),
                  Obx(() => TextFormField(
                    obscureText: controller.isVisibile.value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter password";
                      }
                      return null;
                    },

                    controller: controller.passC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                        hintText: "Enter Your Password", hintStyle: const TextStyle(color: Color(0xff858FAD)),
                        suffixIcon: IconButton(onPressed: () {
                          controller.passvisible();
                        }, icon: Icon(controller.isVisibile.value ? Icons.visibility_off : Icons.visibility))
                    ),
                  )),//password field
                  const SizedBox(height: 20,),

                  const Text("Confirm Password", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  const SizedBox(height: 20,),

                  Obx(() => TextFormField(
                    obscureText: controller.isVisibileC.value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "confirm password";
                      }
                      return null;
                    },
                    controller: controller.confirmPassC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Confirm Your Password", hintStyle: const TextStyle(color: Color(0xff858FAD)),
                        suffixIcon: IconButton(onPressed: () {
                          controller.confirmPassvisible();
                        }, icon: Icon(controller.isVisibileC.value ? Icons.visibility_off : Icons.visibility))
                    ),
                  )),//Confirm password field
                  const SizedBox(height: 20,),
                  const Text("Contact Number", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  const SizedBox(height: 20,),
                  TextFormField(
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return "Enter Phone";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    controller: controller.phoneC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Your Contact Number", hintStyle: const TextStyle(color: Color(0xff858FAD))
                    ),
                  ),// phone number field
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        if (controller.passMatching()) {
                          controller.setData();
                          Get.toNamed("/login");
                        } else {
                          Get.snackbar("Password not matched",
                              "Enter same pass and confirm pass");
                        }
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff55AB60),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                          child: Text("Register", style: TextStyle(color: Colors.white, ),)
                      ),
                    ),
                  ),// login Button

                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.all(10),
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
                              border: Border.all(color: const Color(0xff55AB60)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/google.png", height: 32, width: 32,),
                                const SizedBox(width: 6,),
                                const Text("Google", style: TextStyle(fontSize: 18, color: Color(0xff626262)),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff55AB60)),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/facebook.png", height: 32, width: 32,),
                                const SizedBox(width: 6,),
                                const Text("Facebook", style: TextStyle(fontSize: 18, color: Color(0xff626262)),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),// google facebook
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("You Have Already an Account? ", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),),
                      InkWell(
                          hoverColor: Colors.transparent,
                          onTap: () {
                            Get.toNamed("/login");
                          },
                          child: const Text("logIn", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),))
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
