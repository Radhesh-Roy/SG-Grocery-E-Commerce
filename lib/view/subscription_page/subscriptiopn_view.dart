import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SubscriptionViewPage extends StatelessWidget {
  const SubscriptionViewPage({super.key});

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
          "My Subscription",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 51,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text("Weekly-Subscription",style: TextStyle(color: Color(0xff424242), fontSize: 20, fontWeight: FontWeight.w600),),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
              ),
              child: Padding(padding: EdgeInsets.all(12),
              child: Column(children: [
                Row(spacing: 5,
                  children: [
                    Text("Today", style: TextStyle(color: Color(0xff424242), fontSize: 18, fontWeight: FontWeight.w700),),
                    Text("(23 September 2026)",style: TextStyle(color: Color(0xff737373), fontWeight: FontWeight.w400, fontSize: 18),),
                    Image.asset("assets/calender.png", height: 20, width: 20,)
                  ],
                ),
                SizedBox(height: 13,),
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Card(
                            elevation: 5,
                            shadowColor: Colors.white70,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 119,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex:3,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        height: 89,
                                        decoration: BoxDecoration(
                                            color: Color(0xffF9F9F9),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Image.asset("assets/strawberry.png", fit: BoxFit.fill),

                                      )),
                                  Expanded(
                                      flex:5,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10, right: 10),
                                        child: Column(spacing: 4,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Strawberry", style: TextStyle(color: Color(0xff656565), fontSize: 16, fontWeight: FontWeight.w600),),
                                            Text("500 ml", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400),),
                                            Text("2\$", style: TextStyle(color: Color(0xff656565), fontSize: 16, fontWeight: FontWeight.w600),)
                                          ],
                                        ),
                                      )
                                  ),
                                  Expanded(
                                      flex:2,
                                      child: Column(
                                        children: [
                                          Text("Qty: 1", style: TextStyle(color: Color(0xff656565), fontSize: 16, fontWeight: FontWeight.w600),)
                                        ],
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              right: 4,
                              bottom: 4,
                              child: Container(
                                padding: EdgeInsets.only(top: 13,left: 12),
                            height: 43,
                            width: 159,
                            decoration: BoxDecoration(
                              color: Color(0xff55AB60),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(13))
                            ),
                                child: Row(
                                  spacing:9 ,
                                  children: [
                                    Column(
                                      children: [
                                        Text("M\n.", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, height: 0.7),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("T\n.", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, height: 0.7),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("W\n.", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, height: 0.7),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("T\n.", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, height: 0.7),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("F\n.", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, height: 0.7),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("S\n.", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, height: 0.7),),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("S\n.", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, height: 0.7),),
                                      ],
                                    ),
                                  ],
                                ),
                          ))
                        ],
                      );
                    },),
                ),
               // Expanded(
               //    child: Container(
               //        height: 122, width: 271,
               //      decoration: BoxDecoration(
               //        image: DecorationImage(image: AssetImage("assets/frame.png"))
               //
               //        ),
               //    ),
               //  )
              ],),),
            ),
          ),

        ],

      ),

    );
  }
}
