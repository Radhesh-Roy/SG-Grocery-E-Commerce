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
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(4),
              height: 236,
              decoration: BoxDecoration(
                  color: Color(0xffF2FCF4),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Stack(
                children: [
                  Column(
                    spacing: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Image.asset("assets/strawberry.png", height: 79, width: 107,)),
                      Text("Strawberry (1 kg)", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xff656565)),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$3", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Color(0xff55AB60)),),
                          Row(
                            spacing: 3,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(1),
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff55AB60), width: 1),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: Center(
                                    child: Text("-", style: TextStyle(color: Color(0xff55AB60), fontWeight: FontWeight.bold, fontSize: 12),),
                                  )
                              ),
                              Text("1", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xff55AB60)),),
                              Container(
                                  padding: EdgeInsets.all(1),
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      color: Color(0xff55AB60),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: Center(
                                    child: Text("+", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                                  )
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: (){
                        },
                        child: Container(
                            padding: EdgeInsets.all(1),
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                color: Color(0xff55AB60),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Text("+", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                            )
                        ),
                      ))
                ],
              ),
            );
          },),
        ),
      ),
    );
  }
}
