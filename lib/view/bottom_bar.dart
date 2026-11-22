import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/bottom_controller/bottom_controller.dart';

class BottomBarView extends StatelessWidget {
  const BottomBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomController controller = Get.put(BottomController());

    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.screenChange,
          selectedItemColor: Colors.white,
          selectedFontSize: 16,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              backgroundColor: Color(0xff55AB60),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: "Explore",
              backgroundColor: Color(0xff55AB60),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
              backgroundColor: Color(0xff55AB60),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
              backgroundColor: Color(0xff55AB60),
            ),
          ],
        ),
        body: controller.screen[controller.currentIndex.value],
      ),
    );
  }
}
