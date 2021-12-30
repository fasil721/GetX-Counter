import 'package:get/get.dart';
import 'package:getex_sample/controller/pageController.dart';

class PageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Page1Controller());
  }
}
