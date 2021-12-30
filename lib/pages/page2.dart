import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex_sample/controller/pageController.dart';


class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = Get.find<Page1Controller>();
    return Scaffold(
      appBar: AppBar(
        title: Text("page 2"),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
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
              child: Text("increment"),
            ),
          ),
        ],
      ),
    );
  }
}
