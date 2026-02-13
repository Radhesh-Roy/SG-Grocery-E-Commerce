import 'package:flutter/material.dart';

class CartViewPage extends StatelessWidget {
  const CartViewPage({super.key});

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
            color: Colors.black,
          ),
        ),
        title: Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Color(0xff424242),
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tomorrow, 7 AM - 12 AM ",
              style: TextStyle(
                color: Color(0xff424242),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {

                  if(index==4){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          spacing: 1,
                          children: [
                            Expanded(
                              flex:6,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 40, top: 11, bottom: 11, right: 30),
                                    height: 106,
                                    width:double.infinity,
                                    decoration:BoxDecoration(
                                        color: Color(0xff60C370),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("FLAT", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),),
                                        Text("50% off", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),),
                                        Text("on your first order", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),),
                                        Text("Use coupon code to get OFFER", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),),
                                      ],

                                    ),
                                  ),
                                  Positioned(
                                      top: -10,
                                      right:-10,
                                      child: Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(60),
                                        ),
                                      )),
                                  Positioned(
                                      bottom: -10,
                                      right:-10,

                                      child: Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(60),
                                        ),
                                      )),
                                  Positioned(
                                      top:12,
                                      left:12,
                                      child: Image.asset("assets/cross.png", height: 11, width: 11,)),
                                  Positioned(
                                      top:12,
                                      right:12,
                                      child: Image.asset("assets/cross.png", height: 11, width: 11,)),
                                  Positioned(
                                      bottom:12,
                                      left:12,
                                      child: Image.asset("assets/cross.png", height: 11, width: 11,)),
                                  Positioned(
                                      bottom:12,
                                      right:12,
                                      child: Image.asset("assets/cross.png", height: 11, width: 11,)),
                                ],
                              )
                            ),
                            Expanded(
                              flex:2,
                              child: Stack(

                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 106,
                                    width:double.infinity,
                                    decoration:BoxDecoration(
                                        color: Color(0xff60C370),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Code", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),),
                                        Text("GETFIRST", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),),

                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      top: -10,
                                      left:-10,

                                      child: Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(60),
                                        ),
                                      )),
                                  Positioned(
                                      bottom: -10,
                                      left:-10,

                                      child: Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(60),
                                        ),
                                      )),
                                  Positioned(
                                      top:12,
                                      left:12,
                                      child: Image.asset("assets/cross.png", height: 11, width: 11,)),
                                  Positioned(
                                      top:12,
                                      right:12,
                                      child: Image.asset("assets/cross.png", height: 11, width: 11,)),
                                  Positioned(
                                      bottom:12,
                                      left:12,
                                      child: Image.asset("assets/cross.png", height: 11, width: 11,)),
                                  Positioned(
                                      bottom:12,
                                      right:12,
                                      child: Image.asset("assets/cross.png", height: 11, width: 11,)),
                                ],
                              )
                            ),
                          ],
                        ),// Coupon Card
                        SizedBox(height: 10,),
                        Row(
                          spacing: 1,
                          children: [
                            Expanded(
                                flex:6,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 40, top: 11, bottom: 11, right: 30),
                                      height: 106,
                                      width:double.infinity,
                                      decoration:BoxDecoration(
                                          color: Color(0xffD6C533),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("FLAT", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),),
                                          Text("50% off", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),),
                                          Text("on your first order", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),),
                                          Text("Use coupon code to get OFFER", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),),
                                        ],

                                      ),
                                    ),
                                    Positioned(
                                        top: -10,
                                        right:-10,
                                        child: Container(
                                          height: 22,
                                          width: 22,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        )),
                                    Positioned(
                                        bottom: -10,
                                        right:-10,

                                        child: Container(
                                          height: 22,
                                          width: 22,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        )),
                                    Positioned(
                                        top:12,
                                        left:12,
                                        child: Image.asset("assets/cross.png", height: 11, width: 11,color: Color(0xffBCB14C))),
                                    Positioned(
                                        top:12,
                                        right:12,
                                        child: Image.asset("assets/cross.png", height: 11, width: 11,color: Color(0xffBCB14C))),
                                    Positioned(
                                        bottom:12,
                                        left:12,
                                        child: Image.asset("assets/cross.png", height: 11, width: 11,color: Color(0xffBCB14C))),
                                    Positioned(
                                        bottom:12,
                                        right:12,
                                        child: Image.asset("assets/cross.png", height: 11, width: 11,color: Color(0xffBCB14C))),
                                  ],
                                )
                            ),
                            Expanded(
                                flex:2,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 106,
                                      width:double.infinity,
                                      decoration:BoxDecoration(
                                          color: Color(0xffD6C533),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Code", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),),
                                          Text("DOLLAR5", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),),

                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        top: -10,
                                        left:-10,

                                        child: Container(
                                          height: 22,
                                          width: 22,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        )),
                                    Positioned(
                                        bottom: -10,
                                        left:-10,

                                        child: Container(
                                          height: 22,
                                          width: 22,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        )),
                                    Positioned(
                                        top:12,
                                        left:12,
                                        child: Image.asset("assets/cross.png", height: 11, width: 11, color: Color(0xffBCB14C),)),
                                    Positioned(
                                        top:12,
                                        right:12,
                                        child: Image.asset("assets/cross.png", height: 11, width: 11,color: Color(0xffBCB14C))),
                                    Positioned(
                                        bottom:12,
                                        left:12,
                                        child: Image.asset("assets/cross.png", height: 11, width: 11,color: Color(0xffBCB14C))),
                                    Positioned(
                                        bottom:12,
                                        right:12,
                                        child: Image.asset("assets/cross.png", height: 11, width: 11,color: Color(0xffBCB14C))),
                                  ],
                                )
                            ),
                          ],
                        ),// Coupon Card

                        SizedBox(height: 10,),
                        Center(child: Text("Promo code can be applied on payment screen", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),)),
                        SizedBox(height: 10,),
                        Text(
                          "Payment Details",
                          style: TextStyle(
                            color: Color(0xff424242),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Card(
                          elevation: 3,
                          color: Colors.white70,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Total MRP", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400),),
                                          Text("\$9.000", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400),),


                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Discount", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400),),
                                          Text("\$0.00", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400),),


                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Shipping Charges", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400),),
                                          Text("Free", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 16, fontWeight: FontWeight.w400),),


                                        ],
                                      ),
                                    ],
                                  )
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffDCFFE2),

                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Total", style: TextStyle(color: Color(0xff434343), fontSize: 18, fontWeight: FontWeight.w400),),
                                      Text("\$9.00", style: TextStyle(color: Color(0xff434343), fontSize: 18, fontWeight: FontWeight.w400),),


                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  return Stack(
                    children: [
                      Card(
                        elevation: 5,
                        shadowColor: Colors.white70,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          height: 119,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 89,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF9F9F9),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    "assets/strawberry.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Column(
                                    spacing: 4,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Strawberry",
                                        style: TextStyle(
                                          color: Color(0xff656565),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "500 ml",
                                        style: TextStyle(
                                          color: Color(0xff9B9B9B),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "2\$",
                                        style: TextStyle(
                                          color: Color(0xff656565),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap:(){},
                                      child: Image.asset(
                                        "assets/cros.png",
                                        height: 12,
                                        width: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20,
                        bottom: 20,
                        child: Row(
                          spacing: 6,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            InkWell(
                              onTap: () {},
                              hoverColor: Colors.transparent,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff55AB60),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      color: Color(0xff55AB60),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff55AB60),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              hoverColor: Colors.transparent,
                              child: Container(
                                padding: EdgeInsets.all(1),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xff55AB60),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
