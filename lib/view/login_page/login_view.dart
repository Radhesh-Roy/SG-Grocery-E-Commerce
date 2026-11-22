import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/auth_controller/login/login_controller.dart';

class LogInViewPage extends StatelessWidget {
  const LogInViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
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
                Center(child: Image.asset("assets/loginimage.png", height: 152,)),// image part
                const Text("Login", style: TextStyle(color: Color(0xff55AB60), fontSize: 24, fontWeight: FontWeight.w600),),
                const SizedBox(height: 20,),
                const Text("Email Id", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                const SizedBox(height: 20,),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Email";
                    }
                    return null;
                  },
                  controller: controller.logEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "Enter Your Email ID", hintStyle: const TextStyle(color: Color(0xff858FAD))
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("Password", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                const SizedBox(height: 20,),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Correct Password";
                    }
                    return null;
                  },
                  controller: controller.logPass,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Enter Your Password", hintStyle: const TextStyle(color: Color(0xff858FAD))
                  ),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      await controller.getData();
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff55AB60),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text("Login", style: TextStyle(color: Colors.white, ),)
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
                    const Text("Don’t You Have an Account? ", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Get.toNamed("/register");
                      },
                      child: const Text("Register", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
