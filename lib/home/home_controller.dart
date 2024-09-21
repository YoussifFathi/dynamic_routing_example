import 'package:get/get.dart';
import 'package:test_dynamic_routing_package/home/product_model.dart';
import 'package:test_dynamic_routing_package/services/dynamic_routing_service.dart';

class HomeController extends GetxController {

  final List<ProductModel> products = [
    ProductModel(index: 1, title: "Product One"),
    ProductModel(index: 2, title: "Product Two"),
    ProductModel(index: 3, title: "Product Three"),
    ProductModel(index: 4, title: "Product Four"),

  ];

  final selectedProductIndex = RxInt(1);

  void selectNewProduct(int newProductIndex){
    selectedProductIndex(newProductIndex);
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    DynamicRoutingService.setDynamicRouting();
  }

}