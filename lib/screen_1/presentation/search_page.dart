import 'package:flutter/material.dart';
import 'package:test_project/screen_1/presentation/bottom_navigation.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: const [Expanded(child: TextField())],
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
                )),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      ),
    );
  }
}
