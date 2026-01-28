import 'package:flutter/material.dart';

class LogInViewPage extends StatelessWidget {
  const LogInViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.all(10),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/appbar-image.png", height: 53,)),
            SizedBox(height: 30,),
            Center(child: Image.asset("assets/loginimage.png", height: 152,)),// image part
            Text("Login", style: TextStyle(color: Color(0xff55AB60), fontSize: 24, fontWeight: FontWeight.w600),),
            SizedBox(height: 20,),
            Text("Email Id", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                hintText: "Enter Your Email ID", hintStyle: TextStyle(color: Color(0xff858FAD))
              ),
            ),
            SizedBox(height: 20,),
            Text("Password", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: "Enter Your Password", hintStyle: TextStyle(color: Color(0xff858FAD))
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),

      )
    );
  }
}
