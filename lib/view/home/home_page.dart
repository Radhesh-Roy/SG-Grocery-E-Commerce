import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:sggrocery/controller/home_controller/home_controller.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                color: const Color(0xffFFFFFF),
                elevation: 9,
                shadowColor: Colors.white54,
                child: TextField(
                  controller: controller.searchController,
                  onChanged: (value) {
                    controller.searchProduct(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      "assets/search.png",
                      height: 23,
                      width: 23,
                    ),
                    hintText: "Search products and brands",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ), // Searchbar

              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  height: 154,
                  viewportFraction: 1,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/card.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    },
                  );
                }).toList(),
              ), // slider Side
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: const Text(
                      "Top Categories",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      Get.toNamed("/explore");
                    },
                    child: const Text(
                      "Explore All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff55AB60),
                      ),
                    ),
                  ),
                ],
              ), // category top
              const SizedBox(height: 10),
              SizedBox(
                height: 135,
                child: Obx(
                  () => ListView.builder(
                    itemCount: controller.filteredCategory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var cat = controller.filteredCategory[index];
                      return InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          String title = cat["title"]?.toString().toLowerCase() ?? "grocery";
                          if (title.contains("glocery") || title.contains("grocery")) {
                            title = "grocery";
                          } else if (title.contains("veg")) {
                            title = "vegetable";
                          } else if (title.contains("fruit")) {
                            title = "fruit";
                          } else if (title.contains("dairy")) {
                            title = "dairy";
                          } else if (title.contains("bakery")) {
                            title = "bakery";
                          }
                          log("Category selected: $title");
                          Get.toNamed("/exploreItem", arguments: title);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0xffF2FCF4),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 87,
                                width: 87,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "${cat["image"]}",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: 38,
                                width: 87,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  color: Color(0xff55AB60),
                                ),
                                child: Center(
                                  child: Text(
                                    "${cat["title"]}",
                                    style: const TextStyle(
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
                ),
              ), // Category
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: const Text(
                      "Top Products",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      Get.toNamed("/explore");
                    },
                    child: const Text(
                      "Explore All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff55AB60),
                      ),
                    ),
                  ),
                ],
              ), // Top Products
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                child: Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.filteredTopProduct.length,
                    itemBuilder: (context, index) {
                      var prod = controller.filteredTopProduct[index];
                      return InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Get.toNamed("/details", arguments: {
                            "title": prod["title"],
                            "price": prod["price"],
                            "discount_parcent": prod["discount-offer"],
                            "description": "Premium quality ${prod["title"]}.",
                            "img": prod["image"]
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          height: 192,
                          width: 162,
                          decoration: BoxDecoration(
                            color: const Color(0xffF2FCF4),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                spacing: 7,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      "${prod["image"]}",
                                      height: 92,
                                      width: 86,
                                      errorBuilder: (context, error, stackTrace) =>
                                          Image.asset("assets/strawberry.png", height: 92, width: 86),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                    child: Text(
                                      "${prod["title"]}",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  Text(
                                    "৳ ${prod["price"]}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 20,
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  height: 42,
                                  width: 58,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff55AB60),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "${prod["discount-offer"]}%",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const Text(
                                        "OFF",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ), // Product
              const SizedBox(height: 15),
              Container(
                height: 191,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/advertisement.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ), // cashback image
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: const Text(
                      "Deals Of the week",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      Get.toNamed("/explore");
                    },
                    child: const Text(
                      "Explore All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff55AB60),
                      ),
                    ),
                  ),
                ],
              ), // deals of the week
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.dealOfWeek.length,
                  itemBuilder: (context, index) {
                    var deal = controller.dealOfWeek[index];
                    return InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Get.toNamed("/details", arguments: {
                          "title": deal["title"],
                          "price": deal["price"],
                          "discount_parcent": deal["discount-offer"],
                          "description": "Special deal of the week for ${deal["title"]}.",
                          "img": deal["image"]
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 192,
                        width: 162,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2FCF4),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          spacing: 7,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: (deal["image"] != null &&
                                      deal["image"].toString().startsWith("http"))
                                  ? Image.network(
                                      deal["image"]!,
                                      height: 92,
                                      width: 86,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      "assets/doftdrinks.png",
                                      height: 92,
                                      width: 86,
                                    ),
                            ),
                            Text(
                              "${deal["title"]}",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(
                              "Up to ${deal["discount-offer"]}% off",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff55AB60),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ), // deals of the week product
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: const Text(
                      "Featured Items",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      Get.toNamed("/explore");
                    },
                    child: const Text(
                      "Explore All",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff55AB60),
                      ),
                    ),
                  ),
                ],
              ), // Featured Item
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.featureItem.length,
                  itemBuilder: (context, index) {
                    var item = controller.featureItem[index];
                    return InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Get.toNamed("/details", arguments: {
                          "title": item["title"],
                          "price": item["price"],
                          "discount_parcent": "10",
                          "description": "Featured fresh item: ${item["title"]}.",
                          "img": item["image"]
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        padding: const EdgeInsets.all(4),
                        height: 192,
                        width: 162,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2FCF4),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          spacing: 7,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: (item["image"] != null &&
                                      item["image"].toString().startsWith("http"))
                                  ? Image.network(
                                      item["image"]!,
                                      height: 92,
                                      width: 86,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      "assets/granola.png",
                                      height: 92,
                                      width: 86,
                                    ),
                            ),
                            Text(
                              "${item["title"]}",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "৳ ${item["price"]}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff55AB60),
                                    ),
                                  ),
                                  Text(
                                    item["net-weight"]?.toString() ?? "",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ), // Featured Item product
            ],
          ),
        ),
      ),
    );
  }
}
