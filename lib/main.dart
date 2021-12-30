import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex_sample/pages/page1.dart';
import 'package:getex_sample/pages/page2.dart';

import 'binding/pageBinding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: "/1",
          page: () =>const Page1(),
          binding: PageBinding(),
        ),
        GetPage(
          name: "/2",
          page: () =>const Page2(),
          binding: PageBinding(),
        ),
      ],
      initialRoute: "/1",
    );
  }
}

class ApiServices {
  fetchTextFromApi() {
    return "hai hello";
  }
}
