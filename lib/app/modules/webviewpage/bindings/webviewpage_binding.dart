import 'package:get/get.dart';

import '../controllers/webviewpage_controller.dart';

class WebviewpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebviewpageController>(
      () => WebviewpageController(),
    );
  }
}
