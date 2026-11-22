import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/view/widget/custom_back_button.dart';

class ProfileViewPage extends StatelessWidget {
  const ProfileViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: const CustomBackButton(color: Color(0xff424242)),
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Color(0xff424242),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 79,
                width: 79,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/rj.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ), // Profile Image
            const SizedBox(height: 15),
            const Center(
              child: Text(
                "Radhesh Roy",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ), // User name
            const SizedBox(height: 5),
            const Center(
              child: Text(
                "radhesh@gmail.com",
                style: TextStyle(
                  color: Color(0xff4B4B4B),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ), //User Email
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                height: 10,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF3FFF5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.toNamed("/cart");
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/order-icon.png", height: 26, width: 26),
                            const SizedBox(width: 10),
                            const Text(
                              "My Orders",
                              style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ), //My Order
                      const SizedBox(height: 12),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.toNamed("/subscription");
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/sub-icon.png", height: 26, width: 26),
                            const SizedBox(width: 10),
                            const Text(
                              "My Subscriptions",
                              style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ), //My Subscriptions
                      const SizedBox(height: 12),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.toNamed("/myAddress");
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/add-icon.png", height: 26, width: 26),
                            const SizedBox(width: 10),
                            const Text(
                              "My Address",
                              style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ), //My Address
                      const SizedBox(height: 12),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.toNamed("/myWallet");
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/faq.png", height: 26, width: 26),
                            const SizedBox(width: 10),
                            const Text(
                              "My Wallet",
                              style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ), //My Wallet
                      const SizedBox(height: 12),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {},
                        child: Row(
                          children: [
                            Image.asset("assets/contact.png", height: 26, width: 26),
                            const SizedBox(width: 10),
                            const Text(
                              "Contact Us",
                              style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ), //Contact Us
                      const SizedBox(height: 12),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {},
                        child: Row(
                          children: [
                            Image.asset("assets/about-icon.png", height: 26, width: 26),
                            const SizedBox(width: 10),
                            const Text(
                              "About",
                              style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ), //About
                      const SizedBox(height: 12),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.offAllNamed("/login");
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/logout.png", height: 26, width: 26),
                            const SizedBox(width: 10),
                            const Text(
                              "Log Out",
                              style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ), //LogOut
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
