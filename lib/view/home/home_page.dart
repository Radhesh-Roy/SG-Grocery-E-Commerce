import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              color: Color(0xffFFFFFF),
              elevation: 9,
              shadowColor: Colors.white54,
              child: TextField(

                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/search.png", height: 23, width: 23,),
                  hintText: "Search products and brands",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ), // Searchbar
            SizedBox(height: 20,),
            CarouselSlider(
              options: CarouselOptions(height: 154, viewportFraction: 1, ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/slider1.png",),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)
                        ),
                    );
                  },
                );
              }).toList(),
            ), // slider Side
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Text("Top Categories", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,),)),
                InkWell(
                  hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Text("Explore All", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ), // category top
            SizedBox(height: 10,),
            SizedBox(
              height: 135,
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
               return InkWell(
                 hoverColor: Colors.transparent,
                 onTap: (){
                   log("category");
                 },
                 child: Container(
                   margin: EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(7),
                     color: Color(0xffF2FCF4)
                   ),
                     child: Column(
                       children: [
                         Container(
                           height: 87,
                           width: 87,
                           decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("assets/catagory1.png"), fit: BoxFit.cover)
                           ),
                         ),
                         Container(
                           height: 38,
                           width: 87,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                             color: Color(0xff55AB60)
                           ),
                           child: Center(child: Text("Groecries", style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600),)),

                         )
                       ],
                     ),
                 ),
               );

              },
              ),

            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Text("Top Products", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,),)),
                InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Text("Explore All", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),))
              ],
            ),// Top Products
            SizedBox(height: 10,),
            SizedBox(
              height: 200,
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
                  height: 192,
                    width: 162,
                    decoration: BoxDecoration(
                      color: Color(0xffF2FCF4),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Stack(
                      children: [
                        Column(
                          spacing: 7,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Image.asset("assets/topProduct1.png", height: 92, width: 86,)),
                            Text("Fortune Rice", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),),
                            Text("\$3/kg", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),)

                          ],
                        ),
                        Positioned(
                            top: 20,
                            child: Container(
                              padding: EdgeInsets.all(1),
                          height: 42,
                          width: 58,
                          decoration: BoxDecoration(
                            color: Color(0xff55AB60),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50))
                          ),
                              child: Column(
                                children: [
                                  Text("37%", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                                  Text("OFF", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                                ],
                              )
                        ))
                      ],
                    ),
                  ),
                );
            },)),//
            SizedBox(height: 15,),
            Container(
              height: 191,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage("assets/advertisement.png"), fit: BoxFit.cover)
              ),
            )




          ],
        ),),
      ),

    );
  }
}
