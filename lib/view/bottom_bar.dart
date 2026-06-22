import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:sggrocery/controller/bottom_controller/bottom_controller.dart';

class BottomBarView extends StatelessWidget {
   BottomBarView({super.key});
   BottomController controller=Get.put(BottomController());

  @override
  Widget build(BuildContext context) {

    return Obx(()=>Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.screenChange,
          selectedItemColor: Colors.white,
          selectedFontSize: 20,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home", backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: "Explore", backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "cart", backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile", backgroundColor: Colors.green),
        ],),
        body: controller.screen[controller.currentIndex.value]),
    );
  }
}
