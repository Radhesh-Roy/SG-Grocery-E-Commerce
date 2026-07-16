import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sggrocery/controller/home_controller/home_controller.dart';

import '../details_page/details_view.dart';
import '../explore-item/exploreItem_view.dart';

class ExploreViewPage extends StatelessWidget {
  const ExploreViewPage({super.key});
  @override
  Widget build(BuildContext context) {
    HomeController controller=HomeController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: InkWell(
            hoverColor: Colors.transparent,
            onTap: (){
              Get.back();
            },
            child: Image(image: AssetImage("assets/back.png",))),
        title: Text("Explore", style: TextStyle( fontWeight: FontWeight.w700, fontSize: 22
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Text("Groceries", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,),)),
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){
                      Get.to(ExploreItemViewPage(category: 'Gloceries',));

                    },
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Groceries
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryProduct["grocery"].length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      hoverColor: Colors.transparent,
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(4),
                        height: 146,
                        width: 114,
                        decoration: BoxDecoration(
                            color: Color(0xffF2FCF4),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: (){
                                log("${controller.categoryProduct["grocery"][index]}");
                                Get.to(DetailsView());
                              },
                              child: Column(
                                spacing: 3,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(child: Image.network("${controller.categoryProduct["grocery"][index]["img"].toString()}", height: 69, width: 69,)),
                                  Text("${controller.categoryProduct["grocery"][index]["title"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),overflow: TextOverflow.ellipsis, maxLines: 1,),
                                  Text("${controller.categoryProduct["grocery"][index]["net_weight"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                  Text("${controller.categoryProduct["grocery"][index]["price"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: InkWell(
                                  hoverColor: Colors.transparent,
                                  onTap: (){
                                    log("add button");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(1),
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Color(0xff55AB60),
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Center(
                                        child: Text("+", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                                      )
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );},)),// Groceries Product
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Text("Vegetables", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,),)),
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){
                      Get.to(ExploreItemViewPage(category: 'Vegetables',));

                    },
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Vegetables
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryProduct["vegetable"].length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      hoverColor: Colors.transparent,
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(4),
                        height: 146,
                        width: 114,
                        decoration: BoxDecoration(
                            color: Color(0xffF2FCF4),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Stack(
                          children: [
                            Column(
                              spacing: 3,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.network("${controller.categoryProduct["vegetable"][index]["img"].toString()}", height: 69, width: 69,)),
                                Text("${controller.categoryProduct["vegetable"][index]["title"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),overflow: TextOverflow.ellipsis, maxLines: 1,),
                                Text("${controller.categoryProduct["vegetable"][index]["net_weight"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                Text("${controller.categoryProduct["vegetable"][index]["price"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
                              ],
                            ),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: InkWell(
                                  hoverColor: Colors.transparent,
                                  onTap: (){
                                    log("add button");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(1),
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Color(0xff55AB60),
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Center(
                                        child: Text("+", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),

                                      )
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );},)),// Vegetables Product
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Text("Fruits", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,),)),
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){
                      Get.to(ExploreItemViewPage(category: 'Fruits',));
                    },
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Fruits
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryProduct["fruit"].length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      hoverColor: Colors.transparent,
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(4),
                        height: 146,
                        width: 114,
                        decoration: BoxDecoration(
                            color: Color(0xffF2FCF4),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Stack(
                          children: [
                            Column(
                              spacing: 3,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.network("${controller.categoryProduct["fruit"][index]["img"].toString()}", height: 69, width: 69,)),
                                Text("${controller.categoryProduct["fruit"][index]["title"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),overflow: TextOverflow.ellipsis, maxLines: 1,),
                                Text("${controller.categoryProduct["fruit"][index]["net_weight"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                Text("${controller.categoryProduct["fruit"][index]["price"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
                              ],
                            ),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: InkWell(
                                  hoverColor: Colors.transparent,
                                  onTap: (){
                                    log("add button");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(1),
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Color(0xff55AB60),
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Center(
                                        child: Text("+", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),

                                      )
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );},)),// Fruits Product
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Text("Dairy Products", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,),)),
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){
                      Get.to(ExploreItemViewPage(category: 'Dairy Products',));
                    },
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Dairy Products
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryProduct["dairy"].length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      hoverColor: Colors.transparent,
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(4),
                        height: 146,
                        width: 114,
                        decoration: BoxDecoration(
                            color: Color(0xffF2FCF4),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Stack(
                          children: [
                            Column(
                              spacing: 3,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.network("${controller.categoryProduct["dairy"][index]["img"].toString()}", height: 69, width: 69,)),
                                Text("${controller.categoryProduct["dairy"][index]["title"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),overflow: TextOverflow.ellipsis, maxLines: 1,),
                                Text("${controller.categoryProduct["dairy"][index]["net_weight"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                Text("${controller.categoryProduct["dairy"][index]["price"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
                              ],
                            ),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: InkWell(
                                  hoverColor: Colors.transparent,
                                  onTap: (){
                                    log("add button");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(1),
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Color(0xff55AB60),
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Center(
                                        child: Text("+", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),

                                      )
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );},)),// Dairy Product item
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Text("Bakery Items", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,),)),
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){
                      Get.to(ExploreItemViewPage(category: 'Bakery Items',));
                    },
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Bekary item
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryProduct["bakery"].length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      hoverColor: Colors.transparent,
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(4),
                        height: 146,
                        width: 114,
                        decoration: BoxDecoration(
                            color: Color(0xffF2FCF4),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Stack(
                          children: [
                            Column(
                              spacing: 3,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.network("${controller.categoryProduct["bakery"][index]["img"].toString()}", height: 69, width: 69,)),
                                Text("${controller.categoryProduct["bakery"][index]["title"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),overflow: TextOverflow.ellipsis, maxLines: 1,),
                                Text("${controller.categoryProduct["bakery"][index]["net_weight"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                Text("${controller.categoryProduct["bakery"][index]["price"]}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
                              ],
                            ),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: InkWell(
                                  hoverColor: Colors.transparent,
                                  onTap: (){
                                    log("add button");
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(1),
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Color(0xff55AB60),
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Center(
                                        child: Text("+", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),

                                      )
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );},)),// Bekary items Product
            SizedBox(height: 10,),

          ],
        ),),
      ),
    );
  }
}
