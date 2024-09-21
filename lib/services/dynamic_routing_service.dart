import 'package:flutter_dynamic_routing/flutter_dynamic_routing.dart';
import 'package:get/get.dart';

import '../navigation/app_routes.dart';

abstract class DynamicRoutingService {
  static void setDynamicRouting() {
    DynamicRouting.setRoutes(
      {
        0: Routes.home,
        1: Routes.screenOne,
        2: Routes.screenTwo,
        3: Routes.screenThree,
        4: Routes.screenFour,
        5: Routes.screenFive,
      },
      [
        WorkFlowModel(id: 1, screenSequence: [1, 2, 3]),
        WorkFlowModel(id: 2, screenSequence: [2, 4]),
        WorkFlowModel(id: 3, screenSequence: [3, 4, 5]),
        WorkFlowModel(id: 4, screenSequence: [1, 2, 3, 4, 5]),
      ],
      (p0) {
        Get.toNamed(p0);
      },
    );
  }
}
