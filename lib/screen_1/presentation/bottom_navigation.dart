import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_project/common/asset_file.dart';
import 'package:test_project/common/constants.dart';
import 'package:test_project/screen_1/application/bottom_nav_controller.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (c) {
        return BottomAppBar(
          child: SizedBox(
            height: 76,
            child: Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        c.updateSelectedTab(BottomTab.search);
                      },
                      minWidth: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(iconSearch,
                            color: c.selectedTab == BottomTab.search ?
                            yellowColor : textColor,),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text('さがす',
                            style: TextStyle(
                                fontSize: 8.0,
                                color: c.selectedTab == BottomTab.search ?
                                yellowColor : textColor,
                                fontFamily: "NotoSansJP",
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        c.updateSelectedTab(BottomTab.work);
                      },
                      minWidth: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(iconOffice,
                              color: c.selectedTab == BottomTab.work ?
                              yellowColor : textColor),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text('お仕事',
                            style: TextStyle(
                                fontSize: 8.0,
                                color: c.selectedTab == BottomTab.work ?
                                yellowColor : textColor,
                                fontFamily: "NotoSansJP",
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    MaterialButton(
                      onPressed: () {
                        c.updateSelectedTab(BottomTab.chat);
                      },
                      minWidth: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(iconChat,
                              color: c.selectedTab == BottomTab.chat ?
                              yellowColor : textColor),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text('チャット',
                            style: TextStyle(
                                fontSize: 8.0,
                                color: c.selectedTab == BottomTab.chat ?
                                yellowColor : textColor,
                                fontFamily: "NotoSansJP",
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        c.updateSelectedTab(BottomTab.profile);
                      },
                      minWidth: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(iconAccount,
                              color: c.selectedTab == BottomTab.profile ?
                              yellowColor : textColor),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text('マイページ',
                            style: TextStyle(
                                fontSize: 8.0,
                                color: c.selectedTab == BottomTab.profile ?
                                yellowColor : textColor,
                                fontFamily: "NotoSansJP",
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: -20,
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: yellowColor,
                            gradient: LinearGradient(
                              begin: Alignment(0.76, 0.65),
                              end: Alignment(-0.76, -0.65),
                              colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3FFAAA14),
                                blurRadius: 25,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: SvgPicture.asset(iconScanLine, width: 31, height: 31, fit: BoxFit.scaleDown),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Text('打刻する',
                          style: TextStyle(
                              fontSize: 8.0,
                              color: textColor,
                              fontFamily: "NotoSansJP",
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
