import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/cart_controller/cart_controller.dart';
import 'package:sggrocery/view/widget/custom_back_button.dart';

class DetailsView extends StatelessWidget {
  final Map<String, dynamic>? product;
  const DetailsView({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
    final Map<String, dynamic> item = product ?? (Get.arguments as Map<String, dynamic>?) ?? {
      "title": "Green Apple",
      "price": "3",
      "discount_parcent": "42",
      "description": "Green apples have less sugar and carbs, and more fiber, protein, potassium, iron, and vitamin K, taking the lead as a healthier variety, although the differences are ever so slight.",
      "img": ""
    };

    final RxInt quantity = 1.obs;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff55AB60),
        scrolledUnderElevation: 0,
        leading: const CustomBackButton(color: Colors.white),
        title: const Text(
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentGeometry.center,
              children: [
                Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Color(0xff55AB60),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  child: Container(
                    height: 180,
                    width: 195,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: (item["img"] != null &&
                                item["img"].toString().isNotEmpty &&
                                item["img"].toString().startsWith("http"))
                            ? NetworkImage(item["img"])
                            : AssetImage(
                                (item["img"] != null && item["img"].toString().isNotEmpty)
                                    ? item["img"].toString()
                                    : "assets/details.png",
                              ) as ImageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ), // image stack
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "${item["title"] ?? "Product"}",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (quantity.value > 1) {
                                quantity.value--;
                              }
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
                            child: Obx(
                              () => Text(
                                "${quantity.value}",
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff55AB60),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              quantity.value++;
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
                    ],
                  ), // name
                  const SizedBox(height: 10),
                  const Text(
                    "Special Price",
                    style: TextStyle(
                      color: Color(0xff55AB60),
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "৳ ${item["price"] ?? "0"}",
                        style: const TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "(${item["discount_parcent"] ?? item["discount-offer"] ?? "10"}% off)",
                        style: const TextStyle(
                          color: Color(0xff55AB60),
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ), // Price
                  const SizedBox(height: 10),
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "${item['description'] ?? "No description available for this product."}",
                    style: const TextStyle(
                      color: Color(0xff9B9B9B),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed("/subscription");
                        },
                        hoverColor: Colors.transparent,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          height: 36,
                          width: 106,
                          decoration: BoxDecoration(
                            color: const Color(0xff55AB60),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "Subscribe",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          cartController.addToCart({
                            "title": item["title"] ?? "Product",
                            "price": item["price"] ?? "0",
                            "img": item["img"] ?? item["image"] ?? "assets/details.png",
                            "quantity": quantity.value,
                            "unit": "1 Pack"
                          });
                          Get.toNamed("/cart");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          height: 36,
                          width: 106,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff55AB60),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "Buy Once",
                              style: TextStyle(
                                color: Color(0xff55AB60),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ), // Button
                  const SizedBox(height: 10),
                  const Text(
                    "Related items",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ), // Related Items
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          hoverColor: Colors.transparent,
                          onTap: () {
                            Get.toNamed("/details", arguments: {
                              "title": "Strawberry",
                              "price": "4",
                              "discount_parcent": "15",
                              "description": "Fresh strawberries rich in Vitamin C.",
                              "img": "assets/strawberry.png"
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0xffF2FCF4),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Container(
                                        height: 87,
                                        width: 87,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/strawberry.png",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 1,
                                      child: InkWell(
                                        hoverColor: Colors.transparent,
                                        onTap: () {
                                          cartController.addToCart({
                                            "title": "Strawberry",
                                            "price": "4",
                                            "img": "assets/strawberry.png",
                                            "quantity": 1,
                                            "unit": "1kg"
                                          });
                                        },
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: const BoxDecoration(
                                            color: Color(0xffB0B0B0),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 38,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color(0xff55AB60),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Strawberry",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),// Related Items
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
