import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentViewpage extends StatelessWidget {
   PaymentViewpage({super.key});
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
          "Payment",
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
                      Text(
                        "Contact Details",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          hoverColor: Colors.transparent,
                          fillColor: Color(0xffF5F5F5),
                          filled: true,
                          hintText: "First name",
                          hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),// First Name
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            hoverColor: Colors.transparent,
                            fillColor: Color(0xffF5F5F5),
                            filled: true,
                            hintText: "Last name",
                            hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            )
                        ),
                      ),// Last Name
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            hoverColor: Colors.transparent,
                            fillColor: Color(0xffF5F5F5),
                            filled: true,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            )
                        ),
                      ),// Email
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 51,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))
                            ),
                            child: DropdownButton(
                              alignment: AlignmentGeometry.center,
                              icon: Image.asset("assets/dropdown.png", height: 25, width: 25,),
                              isExpanded:true,
                                underline: SizedBox(),
                                hint: Image.asset("assets/ban.png", height: 25, width: 25,),
                                items: [{
                                "code": "+880", "img":"assets/ban.png"
                                },
                                {"code": "+91", "img":"assets/ind.png"},
                                  {"code": "+54", "img":"assets/arg.png"},
                                ].map((item)=>DropdownMenuItem(
                                value: item,
                                child: Row(
                                  children: [
                                    Image.asset(item['img']!, width: 20),
                                    SizedBox(width: 6),
                                    Text(item['code']!),
                                  ],
                                ))).toList(), onChanged: (value) {
                            },),
                          ),
                          Container(
                            height: 51,
                            width: 1,
                            color: Color(0xffD3D3D3),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hoverColor: Colors.transparent,
                                  fillColor: Color(0xffF5F5F5),
                                  filled: true,
                                  hintText: "Phone Number",
                                  hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                                      borderSide: BorderSide.none
                                  )
                              ),
                            ),
                          )
                        ],
                      ),// Phone number
                      SizedBox(height: 15,),
                      Text(
                        "Choose Delivery Address",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Radio(value: 1),
                          Expanded(
                            child: Card(
                              elevation: 7,
                              color: Colors.white,
                              shadowColor: Colors.white,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 174,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset("assets/home.png", height: 15, width: 15,),
                                            SizedBox(width: 10,),
                                            Text("Home", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                                hoverColor:Colors.transparent,
                                                onTap:(){},
                                                child: Image.asset("assets/edit.png", height: 15, width: 15,)),
                                            SizedBox(width: 10,),
                                            InkWell(
                                                hoverColor: Colors.transparent,
                                                onTap: (){},
                                                child: Image.asset("assets/delete.png", height: 15, width: 15,)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text("Home Address"),
                                    )
                                  ],
                                ),
                              ),

                            ),
                          )
                        ],
                      ),// Home address
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Radio(value: 1),
                          Expanded(
                            child: Card(
                              elevation: 7,
                              color: Colors.white,
                              shadowColor: Colors.white,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 174,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                            children: [
                                              Image.asset("assets/office.png", height: 15, width: 15,),
                                              SizedBox(width: 10,),
                                              Text("Home", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)
                                            ],
                                          ),
                                        SizedBox(width: 7,),
                                        Row(
                                            children: [
                                              InkWell(
                                                hoverColor:Colors.transparent,
                                                  onTap:(){},
                                                  child: Image.asset("assets/edit.png", height: 15, width: 15,)),
                                              SizedBox(width: 10,),
                                              InkWell(
                                                hoverColor: Colors.transparent,
                                                  onTap: (){},
                                                  child: Image.asset("assets/delete.png", height: 15, width: 15,)),
                                            ],
                                          ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text("Home Address"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),// office address
                      SizedBox(height: 15,),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: (){
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) {
                              return Container(
                                padding: EdgeInsets.all(10),
                                height: MediaQuery.of(context).size.height * 0.85, // top gap থাকবে
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding:  EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 23,
                                              width: 23,
                                              decoration: BoxDecoration(
                                                  border: BoxBorder.all( width: 2),
                                                  borderRadius: BorderRadius.circular(50)
                                              ),
                                              child:
                                              Center(child: Text("x", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,),)),
                                  
                                            ),
                                          ],
                                        ),// Cross Button
                                        SizedBox(height: 15),
                                        Text(
                                          "Add New Address",
                                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),
                                        ),
                                        SizedBox(height: 10,),
                                        TextField(
                                          decoration: InputDecoration(
                                              hoverColor: Colors.transparent,
                                              fillColor: Color(0xffF5F5F5),
                                              filled: true,
                                              hintText: "Country",
                                              hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        ),// Country
                                        SizedBox(height: 10,),
                                        TextField(
                                          decoration: InputDecoration(
                                              hoverColor: Colors.transparent,
                                              fillColor: Color(0xffF5F5F5),
                                              filled: true,
                                              hintText: "State",
                                              hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        ),//State
                                        SizedBox(height: 10,),
                                        TextField(
                                          decoration: InputDecoration(
                                              hoverColor: Colors.transparent,
                                              fillColor: Color(0xffF5F5F5),
                                              filled: true,
                                              hintText: "City",
                                              hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        ),// City
                                        SizedBox(height: 10,),
                                        TextField(
                                          decoration: InputDecoration(
                                              hoverColor: Colors.transparent,
                                              fillColor: Color(0xffF5F5F5),
                                              filled: true,
                                              hintText: "Pincode",
                                              hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        ),//Pincode
                                        SizedBox(height: 10,),
                                        TextField(
                                          decoration: InputDecoration(
                                              hoverColor: Colors.transparent,
                                              fillColor: Color(0xffF5F5F5),
                                              filled: true,
                                              hintText: "Area",
                                              hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        ),//Area
                                        SizedBox(height: 10,),
                                        TextField(
                                          decoration: InputDecoration(
                                              hoverColor: Colors.transparent,
                                              fillColor: Color(0xffF5F5F5),
                                              filled: true,
                                              hintText: "Landmark",
                                              hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide.none
                                              )
                                          ),
                                        ),//LandMark
                                        SizedBox(height: 10,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: true, onChanged: null),
                                                Text("Home", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 14, fontWeight: FontWeight.w400),)
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                    value: false, onChanged: null),
                                                Text("Work/Office", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 14, fontWeight: FontWeight.w400),)
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(
                                                    value: false, onChanged: null),
                                                Text("Others", style: TextStyle(color: Color(0xff9B9B9B), fontSize: 14, fontWeight: FontWeight.w400),)
                                              ],
                                            ),
                                          ],
                                        ),// Check Box
                                        SizedBox(height: 15,),
                                        Center(
                                          child: InkWell(
                                            hoverColor: Colors.transparent,
                                            onTap:(){
                                            },
                                            child: Container(
                                              height: 50,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(7),
                                                  color: Color(0xff55AB60)
                                              ),
                                              child: Center(
                                                child: Text("Save", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                                              ),
                                            ),
                                          ),
                                        ),//Save Button
                                  
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                border: BoxBorder.all(color: Color(0xff55AB60), width: 2),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child:
                                 Icon(Icons.add, size: 16, color: Color(0xff55AB60), fontWeight: FontWeight.w600,),

                            ),
                            SizedBox(width: 7,),
                            Text("Add New Address", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),),
                          ],
                        ),
                      ),// Add New Address
                      SizedBox(height: 15,),
                      Text(
                        "Do you have a promo code/coupon?",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            hoverColor: Colors.transparent,
                            fillColor: Color(0xffF5F5F5),
                            filled: true,
                            prefixIcon: Image.asset("assets/coupon.png", height: 22,width: 22,),
                            hintText: "Enter Your Code",
                            hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 18, fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            )
                        ),
                      ),// coupon field
                      SizedBox(height: 15,),
                      Center(
                        child: InkWell(
                          hoverColor: Colors.transparent,
                          onTap:(){
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xff55AB60)
                            ),
                            child: Center(
                              child: Text("Apply Now", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ),
                      ),// apply button
                      SizedBox(height: 15,),
                      Text(
                        "Choose Payment Method",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 57,
                        width: double.infinity,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF3FFF5)
                        ),
                        child: Row(
                          children: [
                            Radio(value: 1),
                            Text("Cash On Delivery",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7E7E7E)),)
                          ],
                        ),
                      ),// cash on delivery
                      SizedBox(height: 15,),
                      Container(
                        height: 57,
                        width: double.infinity,
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF3FFF5)
                        ),
                        child: Row(
                          children: [
                            Radio(value: 1),
                            Text("UPI",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7E7E7E)),)
                          ],
                        ),
                      ),// UPI
                      SizedBox(height: 15,),
                      Container(
                        height: 57,
                        width: double.infinity,
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF3FFF5)
                        ),
                        child: Row(
                          children: [
                            Radio(value: 1),
                            Text("Wallet",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7E7E7E)),)
                          ],
                        ),
                      ),// Wallet
                      SizedBox(height: 15,),
                      Container(
                        height: 57,
                        width: double.infinity,
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF3FFF5)
                        ),
                        child: Row(
                          children: [
                            Radio(value: 1),
                            Text("Credit/Debit Card",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7E7E7E)),)
                          ],
                        ),
                      ),// Credit/Debit Card
                      SizedBox(height: 15,),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  border: BoxBorder.all(color: Color(0xff55AB60), width: 2),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child:
                              Icon(Icons.add, size: 14, color: Color(0xff55AB60), fontWeight: FontWeight.w600,),
                            ),
                            SizedBox(width: 7,),
                            Text("Add New Card", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),),
                          ],
                        ),
                      ),// Add New Card
                      SizedBox(height: 15,),
                      Image.asset("assets/card.png", height: 151,),
                      SizedBox(height: 15,),
                      Padding(padding: EdgeInsets.all(20),
                      child: Container(
                        height: 51,
                        decoration: BoxDecoration(
                            color: Color(0xff55AB60),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child:
                        Center(child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("Enter CVV", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),),
                            ),
                            Expanded(
                              child: Container(
                                height: 51,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: BoxBorder.all(color: Color(0xff55AB60))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "e.g 123",
                                    fillColor: Colors.white,
                                    hintStyle: TextStyle(color: Color(0xffBCBCBC), fontSize: 16, fontWeight: FontWeight.w400),
                                    filled: true,
                                    hoverColor: Colors.transparent,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                      ),),// Enter CVV
                      SizedBox(height: 15,),
                      Center(
                        child: InkWell(
                          hoverColor: Colors.transparent,
                          onTap:(){
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xff55AB60)
                            ),
                            child: Center(
                              child: Text("Pay \$9.99", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ),
                      ),// Pay Button
                      SizedBox(height: 10,),
                      Text("Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our privacy policy.", style: TextStyle(color:Color(0xffADADAD), fontSize: 14, fontWeight: FontWeight.w400 ),)
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
