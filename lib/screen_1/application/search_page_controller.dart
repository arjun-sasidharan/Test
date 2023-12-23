import 'package:get/get.dart';
import 'package:test_project/common/asset_file.dart';
import 'package:test_project/screen_1/domain/date.dart';
import 'package:test_project/screen_1/domain/job_details.dart';

class SearchPageController extends GetxController {
    List<Date> calendarList = [
      Date('木', '26'),
      Date('金', '27'),
      Date('土', '28'),
      Date('日', '29'),
      Date('月', '30'),
      Date('火', '31'),
      Date('水', '1'),
      Date('水', '2'),
      Date('水', '3'),
      Date('水', '4'),
      Date('水', '5'),
      Date('水', '6'),
      Date('水', '7'),
      Date('水', '8'),
    ];

    String selectedDate = '26';

    void updateSelectedDate(Date date) {
      selectedDate = date.digit;
      update();
    }

  List<JobDetails> jobList = [
    JobDetails(
        title: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        serviceType: "介護付き有料老人ホーム",
        salary: "¥ 6,000",
        timing: "5月 31日（水）08 : 00 ~ 17 : 00",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportationExpense: "交通費 300円",
        careProviderName: "住宅型有料老人ホームひまわり倶楽部",
        daysLeft: "本日まで",
        imagePath: image1),
    JobDetails(
        title: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        serviceType: "介護付き有料老人ホーム",
        salary: "¥ 6,000",
        timing: "5月 31日（水）08 : 00 ~ 17 : 00",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportationExpense: "交通費 300円",
        careProviderName: "住宅型有料老人ホームひまわり倶楽部",
        daysLeft: "本日まで",
        imagePath: image2),
    JobDetails(
        title: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        serviceType: "介護付き有料老人ホーム",
        salary: "¥ 6,000",
        timing: "5月 31日（水）08 : 00 ~ 17 : 00",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportationExpense: "交通費 300円",
        careProviderName: "住宅型有料老人ホームひまわり倶楽部",
        daysLeft: "本日まで",
        imagePath: image1),
    JobDetails(
        title: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        serviceType: "介護付き有料老人ホーム",
        salary: "¥ 6,000",
        timing: "5月 31日（水）08 : 00 ~ 17 : 00",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportationExpense: "交通費 300円",
        careProviderName: "住宅型有料老人ホームひまわり倶楽部",
        daysLeft: "本日まで",
        imagePath: image2),
  ];

  void onFavoriteClick(int index) {
      jobList[index].isFav = !jobList[index].isFav;
      update();
    }
}