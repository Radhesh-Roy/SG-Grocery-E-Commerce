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
              child: Padding(padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Row(
                      children: [
                        Image.asset("assets/order-icon.png", height: 26, width: 26,),
                        SizedBox(width: 10,),
                        Text("My Orders", style: TextStyle(color: Color(0xff707070), fontSize: 18, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),//My Order
                  SizedBox(height: 12,),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Row(
                      children: [
                        Image.asset("assets/sub-icon.png", height: 26, width: 26,),
                        SizedBox(width: 10,),
                        Text("My Subscriptions", style: TextStyle(color: Color(0xff707070), fontSize: 18, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),//My Subscriptions
                  SizedBox(height: 12),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Row(
                      children: [
                        Image.asset("assets/add-icon.png", height: 26, width: 26,),
                        SizedBox(width: 10,),
                        Text("My Address", style: TextStyle(color: Color(0xff707070), fontSize: 18, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),//My Address
                  SizedBox(height: 12,),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Row(
                      children: [
                        Image.asset("assets/faq.png", height: 26, width: 26,),
                        SizedBox(width: 10,),
                        Text("FAQ", style: TextStyle(color: Color(0xff707070), fontSize: 18, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),//FAQ
                  SizedBox(height: 12,),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Row(
                      children: [
                        Image.asset("assets/contact.png", height: 26, width: 26,),
                        SizedBox(width: 10,),
                        Text("Contact Us", style: TextStyle(color: Color(0xff707070), fontSize: 18, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),//Contact Us
                  SizedBox(height: 12,),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Row(
                      children: [
                        Image.asset("assets/about-icon.png", height: 26, width: 26,),
                        SizedBox(width: 10,),
                        Text("About", style: TextStyle(color: Color(0xff707070), fontSize: 18, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),//About
                  SizedBox(height: 12,),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){},
                    child: Row(
                      children: [
                        Image.asset("assets/logout.png", height: 26, width: 26,),
                        SizedBox(width: 10,),
                        Text("Log Out", style: TextStyle(color: Color(0xff707070), fontSize: 18, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),//LogOut
                  SizedBox(height: 10,),

                ],
              ),),
            ),
          )

        ],
      ),),

    );
  }
}
