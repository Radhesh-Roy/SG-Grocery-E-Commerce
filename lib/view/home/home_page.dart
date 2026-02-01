import 'package:flutter/material.dart';

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
            )
          ],
        ),),
      ),

    );
  }
}
