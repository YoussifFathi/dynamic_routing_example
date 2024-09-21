import 'package:get/get.dart';
import 'package:test_dynamic_routing_package/test_screens/screen_five.dart';
import 'package:test_dynamic_routing_package/test_screens/screen_four.dart';
import 'package:test_dynamic_routing_package/test_screens/screen_one.dart';
import 'package:test_dynamic_routing_package/test_screens/screen_three.dart';
import 'package:test_dynamic_routing_package/test_screens/screen_two.dart';

import '../home/home_screen.dart';
import 'app_routes.dart';

class AppPages {
  const AppPages._();

  static AppPages get i => const AppPages._();

  List<GetPage> get routes => [
        GetPage(
          name: Routes.home,
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: Routes.screenOne,
          page: () => const ScreenOne(),
        ),
        GetPage(
          name: Routes.screenTwo,
          page: () => const ScreenTwo(),
        ),
        GetPage(
          name: Routes.screenThree,
          page: () => const ScreenThree(),
        ),
        GetPage(
          name: Routes.screenFour,
          page: () => const ScreenFour(),
        ),
        GetPage(
          name: Routes.screenFive,
          page: () => const ScreenFive(),
        ),
      ];
}
