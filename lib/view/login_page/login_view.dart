import 'package:flutter/material.dart';

class LogInViewPage extends StatelessWidget {
  const LogInViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          title: Image.asset("assets/appbar-image.png", height: 53,),
          centerTitle: true,
        ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(padding: EdgeInsets.all(10),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/loginimage.png", height: 152,)),// image part
              Text("Login", style: TextStyle(color: Color(0xff55AB60), fontSize: 24, fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text("Email Id", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
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
              InkWell(
                onTap: (){},
                child: Container(

                  height: 50,
                  decoration: BoxDecoration(

                    color: Color(0xff55AB60),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("Login", style: TextStyle(color: Colors.white, ),)
                  ),
                ),
              ),// login Button

              Row(
                children: [
                  Expanded(child: Divider()),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Or Continue With", style: TextStyle(color: Colors.grey),),
                  ),
                  Expanded(child: Divider()),
                ],
              ), // Divider
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff55AB60)),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/google.png", height: 32, width: 32,),
                            SizedBox(width: 6,),
                            Text("Google", style: TextStyle(fontSize: 18, color: Color(0xff626262)),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff55AB60)),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/facebook.png", height: 32, width: 32,),
                            SizedBox(width: 6,),
                            Text("Google", style: TextStyle(fontSize: 18, color: Color(0xff626262)),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),// google facebok
              SizedBox(height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t You Have an Account? ", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),),
                    InkWell(
                      hoverColor: Colors.transparent,
                        onTap: (){},


                        child: Text("Register",style: TextStyle(  fontSize: 16, fontWeight: FontWeight.w700),))
                  ],
                )
            ],
          ),
        ),
      )
    );
  }
}
