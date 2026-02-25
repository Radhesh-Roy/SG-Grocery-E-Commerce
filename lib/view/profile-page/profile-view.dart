import 'package:flutter/material.dart';

class ProfileViewPage extends StatelessWidget {
  const ProfileViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: InkWell(
          hoverColor: Colors.transparent,
          onTap: () {},
          child: Image(
            image: AssetImage("assets/back.png"),
            color: Color(0xff424242),
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Color(0xff424242),
          ),
        ),
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(10),
      child: Column(
        children: [
          Center(
            child: Container(
              height: 79,
                width: 79,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("assets/rj.jpg",),fit: BoxFit.cover)
              ),
            ),
          ),// Profile Image
          SizedBox(height: 15,),
          Center(
            child: Text("Radhesh Roy",style: TextStyle(color: Color(0xff000000), fontSize: 20, fontWeight: FontWeight.w400),),
          ),// User name
          SizedBox(height: 5,),
          Center(
            child: Text("radhesh@gmail.com",style: TextStyle(color: Color(0xff4B4B4B), fontSize: 14, fontWeight: FontWeight.w400),),
          ),//User Email
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 10,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF3FFF5),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          )

        ],
      ),),

    );
  }
}
