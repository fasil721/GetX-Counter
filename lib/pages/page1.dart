import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex_sample/controller/pageController.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = Get.find<Page1Controller>();
    return Scaffold(
      appBar: AppBar(
        title:const Text("page 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text("${pageController.count}"),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                pageController.increment();
              },
              child:const Text("increment"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // print(apiService.fetchTextFromApi());
              Get.toNamed("/2");
              // Get.snackbar("hai", "hello", snackPosition: SnackPosition.BOTTOM);
              // Get.dialog(Text("data"));
              // Get.defaultDialog(title: "data");
              // print(Get.currentRoute);
            },
            child:const Text("go to page 2"),
          ),
        ],
      ),
    );
  }
}
