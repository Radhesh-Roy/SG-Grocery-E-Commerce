import 'package:flutter/material.dart';

class LogInViewPage extends StatelessWidget {
  const LogInViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/appbar-image.png", height: 53,),
                SizedBox(height: 30,),
                Image.asset("assets/loginimage.png", height: 152,)
              ],
            )
          ],
        ),
      ),

      )
    );
  }
}
