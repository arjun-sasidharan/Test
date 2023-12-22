import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:test_project/main.dart';

class AppPages{
  static final all = [
    GetPage(
      name: AppRoute.homepage,
      page: ()=> const MyHomePage(),
    ),
  ];

}

abstract class AppRoute {
  static const homepage = '/homepage';
}