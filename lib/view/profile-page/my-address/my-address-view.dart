import 'package:flutter/material.dart';

class MyAddressView extends StatelessWidget {
  const MyAddressView({super.key});

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
          "My Address",
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
                        mainAxisAlignment: MainAxisAlignment.start,
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

                    SizedBox(height: 15,),
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
