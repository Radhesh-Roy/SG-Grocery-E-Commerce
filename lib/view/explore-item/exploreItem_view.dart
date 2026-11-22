import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/cart_controller/cart_controller.dart';
import 'package:sggrocery/controller/home_controller/home_controller.dart';
import 'package:sggrocery/view/widget/custom_back_button.dart';

class ExploreItemViewPage extends StatelessWidget {
  final String? categories;
  const ExploreItemViewPage({super.key, this.categories});

  String getCategoryKey(String? name) {
    if (name == null || name.isEmpty) return "grocery";
    String lower = name.toLowerCase();
    if (lower.contains("glocery") || lower.contains("grocery") || lower.contains("groceries")) {
      return "grocery";
    } else if (lower.contains("veg") || lower.contains("vegetable")) {
      return "vegetable";
    } else if (lower.contains("fruit")) {
      return "fruit";
    } else if (lower.contains("dairy")) {
      return "dairy";
    } else if (lower.contains("bakery") || lower.contains("bake")) {
      return "bakery";
    }
    return lower;
  }

  String getCategoryTitle(String key, String? rawCategory) {
    if (rawCategory != null && rawCategory.isNotEmpty) {
      return rawCategory;
    }
    switch (key) {
      case "grocery":
        return "Groceries";
      case "vegetable":
        return "Vegetables";
      case "fruit":
        return "Fruits";
      case "dairy":
        return "Dairy Products";
      case "bakery":
        return "Bakery Items";
      default:
        return key.capitalizeFirst ?? "Products";
    }
  }

  @override
  Widget build(BuildContext context) {
    final String rawArg = categories ?? (Get.arguments is String ? Get.arguments : "");
    final String key = getCategoryKey(rawArg);
    final String displayTitle = getCategoryTitle(key, categories);

    final HomeController controller = Get.put(HomeController());
    final CartController cartController = Get.put(CartController());

    List products = controller.categoryProduct[key] ?? [];

    return Scaffold(
      backgroundColor: const Color(0xff55AB60),
      appBar: AppBar(
        backgroundColor: const Color(0xff55AB60),
        scrolledUnderElevation: 0,
        leading: const CustomBackButton(color: Colors.white),
        title: Text(
          displayTitle,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: products.isEmpty
              ? const Center(
                  child: Text(
                    "No products found",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                )
              : GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.70,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    var item = products[index];
                    return InkWell(
                      onTap: () {
                        Get.toNamed("/details", arguments: item);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xffF2FCF4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                  child: (item["img"] != null &&
                                          item["img"].toString().startsWith("http"))
                                      ? Image.network(
                                          item["img"],
                                          height: 65,
                                          width: 85,
                                          fit: BoxFit.contain,
                                        )
                                      : Image.asset(
                                          "assets/strawberry.png",
                                          height: 65,
                                          width: 85,
                                        ),
                                ),
                                Text(
                                  "${item["title"]} (${item["net_weight"] ?? ""})",
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff656565),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "৳ ${item["price"]}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff55AB60),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        cartController.addToCart({
                                          "title": item["title"],
                                          "price": "${item["price"]}",
                                          "img": item["img"],
                                          "quantity": 1,
                                          "unit": item["net_weight"] ?? "1 Pack"
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(2),
                                        height: 24,
                                        width: 24,
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
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed("/subscription");
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: const Color(0xff55AB60),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: const Text(
                                          "Subscribe",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        cartController.addToCart({
                                          "title": item["title"],
                                          "price": "${item["price"]}",
                                          "img": item["img"],
                                          "quantity": 1,
                                          "unit": item["net_weight"] ?? "1 Pack"
                                        });
                                        Get.toNamed("/cart");
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 4),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xff55AB60),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: const Text(
                                          "Buy Once",
                                          style: TextStyle(
                                            color: Color(0xff55AB60),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: InkWell(
                                hoverColor: Colors.transparent,
                                onTap: () {},
                                child: Image.asset(
                                  "assets/fav.png",
                                  height: 22,
                                  width: 22,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
