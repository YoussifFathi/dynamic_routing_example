import 'package:dynamic_routing/dynamic_routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_dynamic_routing_package/home/home_controller.dart';
import 'package:test_dynamic_routing_package/home/product_container.dart';



class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) =>
                  CustomProductContainer(productModel: controller.products[index])
              ,
              itemCount: controller.products.length,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              DynamicRouting.startWorkflow(context, controller.selectedProductIndex.value);
            },
            child: const Text(
              "Start",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
