import 'package:get/get.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sggrocery/view/login_page/login_view.dart';

class GetxSplashScreen extends GetxController {
  autoSplash() async {
    await Future.delayed(Duration(seconds: 3));
    Get.to(LogInViewPage());
  }

  @override
  void onInit() {
    autoSplash();
    super.onInit();
  }
}
