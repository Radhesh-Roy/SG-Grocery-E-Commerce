import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/view/Explore_page/Explore_view_page.dart';
import 'package:sggrocery/view/home/home_page.dart';
import 'package:sggrocery/view/registration_page/reg_page.dart';
import 'package:sggrocery/view/splash_screen/splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExploreViewPage(),
  ));
}

