import 'package:get/get.dart';
enum BottomTab { search, work, chat, profile}
class BottomNavController extends GetxController {
    BottomTab selectedTab = BottomTab.search;

    void updateSelectedTab(BottomTab tab) {
      selectedTab = tab;
      update();
    }
}