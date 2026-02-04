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
            SizedBox(
              height: 125,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
               return Container(
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
                         decoration: BoxDecoration(
                           color: Color(0xff55AB60)
                         ),
                         child: Text("Groecries", style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600),),

                       )
                     ],
                   ),
               );
              },),
            )
          ],
        ),),
      ),

    );
  }
}
