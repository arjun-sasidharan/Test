import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:test_project/main.dart';
import 'package:test_project/screen_1/presentation/search_page.dart';
import 'package:test_project/screen_2/presentation/detail_page.dart';

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
    GetPage(
      name: AppRoute.detailPage,
      page: ()=> const DetailPage(),
    ),
  ];

}

abstract class AppRoute {
  static const homepage = '/homepage';
  static const searchPage = '/search-page';
  static const detailPage = '/detail-page';
}