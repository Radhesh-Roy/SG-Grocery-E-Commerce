import 'package:flutter/material.dart';

class ExploreViewPage extends StatelessWidget {
  const ExploreViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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


    );
  }
}
