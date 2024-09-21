import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_dynamic_routing_package/home/home_controller.dart';
import 'package:test_dynamic_routing_package/home/product_model.dart';

class CustomProductContainer extends GetView<HomeController> {
  const CustomProductContainer({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.selectNewProduct(productModel.index);
      },
      child: Obx(
        () => Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: controller.selectedProductIndex.value == productModel.index
                  ? Colors.blue
                  : Colors.grey.shade400,
              borderRadius: BorderRadius.circular(16)),
          height: 200,
          child: Center(
            child: Text(
              productModel.title,
              style: TextStyle(
                fontSize: 18,
                color:
                    controller.selectedProductIndex.value == productModel.index
                        ? Colors.white
                        : Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
