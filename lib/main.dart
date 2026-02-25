import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sggrocery/view/Explore_page/Explore_view_page.dart';
import 'package:sggrocery/view/cart-page/cart-view.dart';
import 'package:sggrocery/view/details_page/details_view.dart';
import 'package:sggrocery/view/explore-item/exploreItem_view.dart';
import 'package:sggrocery/view/home/home_page.dart';
import 'package:sggrocery/view/payment-page/payment-view.dart';
import 'package:sggrocery/view/profile-page/my-address/my-address-view.dart';
import 'package:sggrocery/view/profile-page/my-wallet/my-wallet-view.dart';
import 'package:sggrocery/view/profile-page/profile-view.dart';
import 'package:sggrocery/view/registration_page/reg_page.dart';
import 'package:sggrocery/view/splash_screen/splash_screen.dart';
import 'package:sggrocery/view/subscription_page/subscriptiopn_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWalletView(),
  ));
}

