import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:test_project/main.dart';
import 'package:test_project/screen_1/presentation/search_page.dart';

class AppPages{
  static final all = [
    GetPage(
      name: AppRoute.homepage,
      page: ()=> const MyHomePage(),
    ),
    GetPage(
      name: AppRoute.searchPage,
      page: ()=> const SearchPage(),
    ),
  ];

}

abstract class AppRoute {
  static const homepage = '/homepage';
  static const searchPage = '/search-page';
}