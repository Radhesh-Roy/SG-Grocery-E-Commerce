import 'package:flutter/material.dart';

class MyWalletView extends StatelessWidget {
  const MyWalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff55AB60),
      appBar: AppBar(

        backgroundColor: Color(0xff55AB60),

        scrolledUnderElevation: 0,
        leading: InkWell(
          hoverColor: Colors.transparent,

          onTap: () {},
          child: Image(
            image: AssetImage("assets/back.png"),
            color: Colors.white,
          ),
        ),
        title: Text(
          "My Wallet",

          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height:MediaQuery.sizeOf(context).height,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text("My Balance", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),

                    ),//my balance
                    SizedBox(height: 10,),
                    Center(
                      child: Text("\$20", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),),

                    ),// balance
                    SizedBox(height: 10,),
                    Center(
                      child: Text("Use to pay 100% on any orders", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff989898)),),

                    ),// discount notice
                    SizedBox(height: 20,),
                    Text("17 Oct, 2025", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                    Container(
                        height: 97,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow:[BoxShadow(color: Colors.grey.shade100, blurRadius:11, spreadRadius: 5, offset: Offset(3, 3)),]
                        ),
                        child: Padding(padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(flex:6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Cashback Received", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text("Transaction Id : 25917892598342", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff989898)),),
                              ],
                            )),
                            Expanded(flex:2,
                                child: Center(child: Text("\$3", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),)),
                            ),
                          ],
                        ),),

                      ),
                    SizedBox(height: 20,),
                    Text("11 Oct, 2025", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                    Container(
                      height: 97,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow:[BoxShadow(color: Colors.grey.shade100, blurRadius:11, spreadRadius: 5, offset: Offset(3, 3)),]
                      ),
                      child: Padding(padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Expanded(flex:6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Spent on order", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                    SizedBox(height: 10,),
                                    Text("Transaction Id : 25917892598342", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff989898)),),
                                  ],
                                )),
                            Expanded(flex:2,
                              child: Center(child: Text("\$3", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xffEC1313)),)),
                            ),
                          ],
                        ),),

                    ),



                  ],
                ),
              ),
            ),

          ],
        ),
      ),


    );
  }
}
