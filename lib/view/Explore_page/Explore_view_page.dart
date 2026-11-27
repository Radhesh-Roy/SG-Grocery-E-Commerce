import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/cart_controller/cart_controller.dart';
import 'package:sggrocery/controller/home_controller/home_controller.dart';
import 'package:sggrocery/view/details_page/details_view.dart';
import 'package:sggrocery/view/explore-item/exploreItem_view.dart';
import 'package:sggrocery/view/widget/custom_back_button.dart';

class ExploreViewPage extends StatelessWidget {
  const ExploreViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    final CartController cartController = Get.put(CartController());

    Widget buildCategorySection(String sectionTitle, String categoryKey) {
      List products = controller.categoryProduct[categoryKey] ?? [];

      return Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  Get.to(
                    () => ExploreItemViewPage(categories: sectionTitle),
                    arguments: categoryKey,
                  );
                },

                child: Text(
                  sectionTitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  Get.to(
                    () => ExploreItemViewPage(categories: sectionTitle),
                    arguments: categoryKey,
                  );
                },
                child: const Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff55AB60),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                var item = products[index];
                return InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () {
                    Get.to(() => DetailsView(product: item), arguments: item);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(4),
                    height: 146,
                    width: 114,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2FCF4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: (item["img"] != null &&
                                      item["img"].toString().startsWith("http"))
                                  ? Image.network(
                                      item["img"].toString(),
                                      height: 65,
                                      width: 65,
                                      fit: BoxFit.contain,
                                    )
                                  : Image.asset(
                                      "assets/strawberry.png",
                                      height: 65,
                                      width: 65,
                                    ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "${item["title"]}",
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff656565),
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(
                              "${item["net_weight"] ?? ""}",
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff656565),
                              ),
                            ),
                            Text(
                              "৳ ${item["price"]}",
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: InkWell(
                            hoverColor: Colors.transparent,
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
                              padding: const EdgeInsets.all(1),
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
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 15),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: const CustomBackButton(color: Colors.black),
        title: const Text(
          "Explore",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              buildCategorySection("Groceries", "grocery"),
              buildCategorySection("Vegetables", "vegetable"),
              buildCategorySection("Fruits", "fruit"),
              buildCategorySection("Dairy Products", "dairy"),
              buildCategorySection("Bakery Items", "bakery"),
            ],
          ),
        ),
      ),
    );
  }
}
