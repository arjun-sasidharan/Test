import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_project/common/asset_file.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: const [
                Expanded(child: TextField())
              ],
            ),
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 33,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)],
                  )
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   showUnselectedLabels: true,
        //   selectedFontSize: 12,
        //   unselectedFontSize: 12,
        //   currentIndex: 0,
        //   type: BottomNavigationBarType.fixed,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: SvgPicture.asset(
        //             searchIcon,
        //         ),
        //         label:  'さがす'
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.power,color: Colors.black),
        //         label:  'お仕事'
        //     ),
        //     BottomNavigationBarItem(
        //         icon: SizedBox(
        //           height: 20,
        //         ),
        //         label:  'お仕事'
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.power,color: Colors.black),
        //         label:  'お仕事'
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.power,color: Colors.black),
        //         label:  'お仕事'
        //     ),
        //   ],
        // ),
        // floatingActionButton: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     FloatingActionButton(
        //       onPressed: () {},
        //       child: const Icon(Icons.add),
        //
        //     ),
        //   ],
        // ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}


