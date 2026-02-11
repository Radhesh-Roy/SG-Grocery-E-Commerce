import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

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
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentGeometry.center,
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xff55AB60),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  child: Container(
                    height: 180,
                    width: 195,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/details.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ), // image stack
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Green Apple",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
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
                    ],
                  ), // name
                  SizedBox(height: 10),
                  Text(
                    "Special Price",
                    style: TextStyle(
                      color: Color(0xff55AB60),
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$3",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "(42% off)",
                        style: TextStyle(
                          color: Color(0xff55AB60),
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ), // Price
                  SizedBox(height: 10),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Green apples have less sugar and carbs, and more fiber, protein, potassium, iron, and vitamin K, taking the lead as a healthier variety, although the differences are ever so slight.",
                    style: TextStyle(
                      color: Color(0xff9B9B9B),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 7,
                    children: [
                      InkWell(
                        onTap: (){},
                        hoverColor: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 36,
                          width: 106,
                          decoration: BoxDecoration(
                            color: Color(0xff55AB60),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "Subscribe",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 36,
                          width: 106,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff55AB60),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "Buy Once",
                              style: TextStyle(
                                color: Color(0xff55AB60),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ), // Button
                  SizedBox(height: 10),
                  Text(
                    "Related items",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ), // Related Items
                  SizedBox(height: 10),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          hoverColor: Colors.transparent,
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0xffF2FCF4),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Container(
                                        height: 87,
                                        width: 87,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/strawberry.png",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 1,
                                      child: InkWell(
                                        hoverColor: Colors.transparent,
                                        onTap: () {},
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            color: Color(0xffB0B0B0),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 38,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color(0xff55AB60),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Strawberry",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),// Related Items
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
