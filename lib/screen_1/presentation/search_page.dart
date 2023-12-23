import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_project/common/asset_file.dart';
import 'package:test_project/common/constants.dart';
import 'package:test_project/screen_1/application/search_page_controller.dart';
import 'package:test_project/screen_1/presentation/bottom_navigation.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   toolbarHeight: 54,
        //   leadingWidth: 0,
        //   title: TextField(
        //     decoration: InputDecoration(
        //       filled: true,
        //       fillColor: greyColor,
        //       isCollapsed: true,
        //       hintText: '北海道, 札幌市',
        //       hintStyle: const TextStyle(
        //         fontSize: 12,
        //         color: textColor,
        //         fontFamily: 'NotoSansJP',
        //         fontWeight: FontWeight.w500,
        //       ),
        //       contentPadding:
        //           const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //       border: OutlineInputBorder(
        //           borderSide: BorderSide.none,
        //           borderRadius: BorderRadius.circular(16)),
        //     ),
        //   ),
        //   actions: [
        //     IconButton(onPressed: (){}, icon: SvgPicture.asset(iconFilter)),
        //     IconButton(onPressed: (){}, icon: SvgPicture.asset(iconLove)),
        //   ],
        // ),
        body: SingleChildScrollView(
          child: GetBuilder<SearchPageController>(
            init: SearchPageController(),
            builder: (c) {
              return Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 24,),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: greyColor,
                            isCollapsed: true,
                            hintText: '北海道, 札幌市',
                            hintStyle: const TextStyle(
                              fontSize: 12,
                              color: textColor,
                              fontFamily: 'NotoSansJP',
                              fontWeight: FontWeight.w500,
                            ),
                            contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 13,),
                      IconButton(onPressed: (){}, icon: SvgPicture.asset(iconFilter)),
                      const SizedBox(width: 9,),
                      IconButton(onPressed: (){}, icon: SvgPicture.asset(iconLove)),
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    width: double.infinity,
                    height: 33,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)],
                      ),
                    ),
                    child: const Text(
                      '2022年 5月 26日（木）',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontFamily: 'NotoSansJP',
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  const SizedBox(height: 24,),
                  const HorizontalDateSelector(),
                  const SizedBox(height: 24,),
                  const JobCardVerticalList(),
                ],
              );
            }
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: SvgPicture.asset(iconLocation),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

class HorizontalDateSelector extends StatelessWidget {
  const HorizontalDateSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchPageController>(
      builder: (c) {
        return SizedBox(
          height: 67,
          child: ListView.separated(
            itemCount: c.calendarList.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 25.0),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  c.updateSelectedDate(c.calendarList[index]);
                },
                child: Container(
                  width: 44,
                  height: 67,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.0)),
                    color: c.selectedDate == c.calendarList[index].digit ? yellowColor : Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                          c.calendarList[index].symbol,
                        style: TextStyle(
                          color: c.selectedDate == c.calendarList[index].digit ? Colors.white : textColor,
                          fontSize: 17,
                          fontFamily: 'NotoSansJP',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        c.calendarList[index].digit,
                        style: TextStyle(
                          color: c.selectedDate == c.calendarList[index].digit ? Colors.white : textColor,
                          fontSize: 17,
                          fontFamily: 'NotoSansJP',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 6),
          ),
        );
      }
    );
  }
}


class JobCardVerticalList extends StatelessWidget {
  const JobCardVerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchPageController>(
      builder: (c) {
        return ListView.separated(
          shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, i) {
              return JobCardItem(
                title: c.jobList[i].title,
                serviceType: c.jobList[i].serviceType,
                timing: c.jobList[i].timing,
                address: c.jobList[i].address,
                transportationExpense: c.jobList[i].transportationExpense,
                careProviderName: c.jobList[i].careProviderName,
                daysLeft: c.jobList[i].daysLeft,
                imagePath: c.jobList[i].imagePath,
                salary: c.jobList[i].salary,
                index: i,
                isFav: c.jobList[i].isFav,
                onFavoriteClick: c.onFavoriteClick,
              );
            },
            separatorBuilder: (_, index) => const SizedBox(height: 16,),
            itemCount: c.jobList.length);
      }
    );
  }
}


class JobCardItem extends StatelessWidget {
  final String title;
  final String serviceType;
  final String salary;
  final String timing;
  final String address;
  final String transportationExpense;
  final String careProviderName;
  final String daysLeft;
  final String imagePath;
  final int index;
  bool isFav;
  Function(int) onFavoriteClick;

  JobCardItem({super.key, required this.title,
    required this.serviceType,
    required this.salary,
    required this.timing,
    required this.address,
    required this.transportationExpense,
    required this.careProviderName,
    required this.daysLeft,
    required this.imagePath,
    required this.onFavoriteClick,
    required this.isFav,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 186,
                  decoration: ShapeDecoration(
                    image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),

                  ),
                ),
                Positioned(
                  bottom: 7,
                  left: -5,
                  child: Container(
                    width: 74,
                    height: 20,
                    alignment: Alignment.center,
                    // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: errorColor,
                      borderRadius: BorderRadius.circular(2.4),
                    ),
                    child: Text(
                      daysLeft,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: "NotoSansJP",
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, left: 20, right: 12, bottom: 23),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: textColor,
                      fontSize: 13,
                      fontFamily: 'NotoSansJP',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 7,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: lightYellowColor,
                            ),
                            child: Text(
                              serviceType,
                              style: const TextStyle(
                                color: yellowColor,
                                fontSize: 10,
                                fontFamily: "NotoSansJP",
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ),
                      const SizedBox(width: 8),
                      Text(
                        salary,
                        style: const TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontFamily: 'NotoSansJP',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    timing,
                    style: const TextStyle(
                      color: textColor,
                      fontSize: 12,
                      fontFamily: 'NotoSansJP',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    address,
                    style: const TextStyle(
                      color: textColor,
                      fontSize: 12,
                      fontFamily: 'NotoSansJP',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    transportationExpense,
                    style: const TextStyle(
                      color: textColor,
                      fontSize: 12,
                      fontFamily: 'NotoSansJP',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          careProviderName,
                          style: const TextStyle(
                            color: subTextColor,
                            fontSize: 12,
                            fontFamily: 'NotoSansJP',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 20.0,
                        constraints: const BoxConstraints(),
                          onPressed: (){
                            onFavoriteClick(index);
                          },
                          icon: SvgPicture.asset(iconLove, color: isFav ? yellowColor : subTextColor,))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
