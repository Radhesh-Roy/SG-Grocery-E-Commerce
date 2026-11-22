import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/cart_controller/cart_controller.dart';
import 'package:sggrocery/view/widget/custom_back_button.dart';

class CartViewPage extends StatelessWidget {
  const CartViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: const CustomBackButton(color: Colors.black),
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Color(0xff424242),
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 100,
                  color: Color(0xff55AB60),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Your Cart is Empty!",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff424242),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Explore products and add items to your cart.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.offAllNamed("/bottomBar");
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xff55AB60),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tomorrow, 7 AM - 12 AM ",
                style: TextStyle(
                  color: Color(0xff424242),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 15),

              Expanded(
                child: ListView.builder(
                  itemCount: cartController.cartItems.length + 1,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if (index == cartController.cartItems.length) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          // Coupon Card
                          Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(left: 40, top: 11, bottom: 11, right: 30),
                                      height: 106,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff60C370),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("FLAT", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)),
                                          Text("50% off", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                                          Text("on your first order", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400)),
                                          Text("Use coupon code to get OFFER", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    ),
                                    Positioned(top: -10, right: -10, child: Container(height: 22, width: 22, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(60)))),
                                    Positioned(bottom: -10, right: -10, child: Container(height: 22, width: 22, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(60)))),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 106,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff60C370),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Code", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400)),
                                          Text("GETFIRST", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
                                        ],
                                      ),
                                    ),
                                    Positioned(top: -10, left: -10, child: Container(height: 22, width: 22, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(60)))),
                                    Positioned(bottom: -10, left: -10, child: Container(height: 22, width: 22, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(60)))),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Center(
                            child: Text(
                              "Promo code can be applied on payment screen",
                              style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Payment Details",
                            style: TextStyle(
                              color: Color(0xff424242),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Card(
                            elevation: 3,
                            color: Colors.white70,
                            child: Container(
                              height: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text("Total MRP", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400)),
                                              Text("৳ ${cartController.totalAmount.toStringAsFixed(2)}", style: const TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400)),
                                            ],
                                          ),
                                          const Divider(),
                                          const Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Discount", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400)),
                                              Text("৳ 0.00", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400)),
                                            ],
                                          ),
                                          const Divider(),
                                          const Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Shipping Charges", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400)),
                                              Text("Free", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0xffDCFFE2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text("Total", style: TextStyle(color: Color(0xff434343), fontSize: 18, fontWeight: FontWeight.w600)),
                                            Text("৳ ${cartController.totalAmount.toStringAsFixed(2)}", style: const TextStyle(color: Color(0xff434343), fontSize: 18, fontWeight: FontWeight.w600)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: InkWell(
                              hoverColor: Colors.transparent,
                              onTap: () {
                                log("checkout");
                                Get.toNamed("/payment");
                              },
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: const Color(0xff55AB60),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Checkout",
                                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }

                    var item = cartController.cartItems[index];
                    return Stack(
                      children: [
                        Card(
                          elevation: 5,
                          shadowColor: Colors.white70,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            height: 119,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    height: 89,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffF9F9F9),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: (item["img"] != null && item["img"].toString().startsWith("http"))
                                        ? Image.network(item["img"], fit: BoxFit.fill)
                                        : Image.asset(
                                            (item["img"] != null && item["img"].toString().isNotEmpty)
                                                ? item["img"]
                                                : "assets/strawberry.png",
                                            fit: BoxFit.fill,
                                          ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${item["title"] ?? "Product"}",
                                          style: const TextStyle(
                                            color: Color(0xff656565),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          "${item["unit"] ?? "500 ml"}",
                                          style: const TextStyle(
                                            color: Color(0xff9B9B9B),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "৳ ${item["price"] ?? "0"}",
                                          style: const TextStyle(
                                            color: Color(0xff656565),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          cartController.removeFromCart(index);
                                        },
                                        child: Image.asset(
                                          "assets/cros.png",
                                          height: 16,
                                          width: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20,
                          bottom: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  cartController.decrementQuantity(index);
                                },
                                hoverColor: Colors.transparent,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xff55AB60),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        color: Color(0xff55AB60),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "${item["quantity"] ?? 1}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff55AB60),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  cartController.incrementQuantity(index);
                                },
                                hoverColor: Colors.transparent,
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff55AB60),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
