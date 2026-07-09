import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CutomBackButton extends StatelessWidget {

  final Color color;
  const CutomBackButton({
    super.key, required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
        onTap: (){
          Get.back();
        },
        child: Image(image: AssetImage("assets/back.png",), color: color,));
  }
}