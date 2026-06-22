import 'package:get/get.dart';
import 'package:sggrocery/view/Explore_page/Explore_view_page.dart';
import 'package:sggrocery/view/cart-page/cart-view.dart';
import 'package:sggrocery/view/home/home_page.dart';
import 'package:sggrocery/view/profile-page/profile-view.dart';

class BottomController extends GetxController {
   RxInt currentIndex=0.obs;

   RxList screen=[
     HomeViewPage(),
     ExploreViewPage(),
     CartViewPage(),
     ProfileViewPage(),
   ].obs;

   void screenChange(int number){
     currentIndex.value=number;
   }

}