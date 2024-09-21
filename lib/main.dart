import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_dynamic_routing_package/home/home_controller.dart';
import 'package:test_dynamic_routing_package/navigation/app_pages.dart';
import 'package:test_dynamic_routing_package/navigation/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      initialRoute: Routes.initial,
      getPages: AppPages.i.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      HomeController(),
    );
  }
}
