import 'package:flutter/material.dart';

class ExploreItemViewPage extends StatelessWidget {
  const ExploreItemViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff55AB60),
      appBar: AppBar(
        backgroundColor: Color(0xff55AB60),
        scrolledUnderElevation: 0,
        leading: InkWell(
            hoverColor: Colors.transparent,
            onTap: (){},
            child: Image(image: AssetImage("assets/back.png",), color: Colors.white,)),
        title: Text("Fruits", style: TextStyle( fontWeight: FontWeight.w700, fontSize: 22, color: Colors.white
        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
        ),
      ),
    );
  }
}
