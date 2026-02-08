import 'dart:developer';

import 'package:flutter/material.dart';

class ExploreViewPage extends StatelessWidget {
  const ExploreViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: InkWell(
            hoverColor: Colors.transparent,
            onTap: (){},
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
                    onTap: (){},
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Groceries
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
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
                                Center(child: Image.asset("assets/powder.png", height: 69, width: 69,)),
                                Text("Jaggery Powder", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),),
                                Text("500 g", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                Text("\$3", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
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
                    onTap: (){},
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Vegetables
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
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
                                Center(child: Image.asset("assets/tomato.png", height: 69, width: 69,)),
                                Text("Tomato", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),),
                                Text("1KG", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                Text("\$2", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
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
                    onTap: (){},
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Fruits
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
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
                                Center(child: Image.asset("assets/strawberry.png", height: 69, width: 69,)),
                                Text("Strawberry", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),),
                                Text("1Kg", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                Text("\$4", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
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
                    onTap: (){},
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Dairy Products
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
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
                                Center(child: Image.asset("assets/milk.png", height: 69, width: 69,)),
                                Text("A2MATE milk", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),),
                                Text("0.5 Ltr.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                Text("\$2", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
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
                    onTap: (){},
                    child: Text("See All", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Bekary item
            SizedBox(height: 10,),
            SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
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
                                Center(child: Image.asset("assets/powder.png", height: 69, width: 69,)),
                                Text("Parle Rusk", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff656565)),),
                                Text("500 g", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Color(0xff656565)),),
                                Text("\$3", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
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
