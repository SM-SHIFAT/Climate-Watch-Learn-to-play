import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/webviewpage_controller.dart';

class WebviewpageView extends GetView<WebviewpageController> {
  const WebviewpageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   title: const Text('WebviewpageView'),
          //   centerTitle: true,
          // ),
          body: Stack(
            children: [
              WebViewWidget(controller: controller.webController),
              if (controller.isLoading.value)
                Center(
                  child: CircularProgressIndicator(),
                ),
              if (controller.isLoading.value)
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: LinearProgressIndicator(
                      value: controller.loadingProgress.value,
                    ))
            ],
          ),
        ),
      );
    });
  }
}
