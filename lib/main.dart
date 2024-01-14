import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/config/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: "NotoSansJP",
      ),
      initialRoute: AppRoute.homepage,
      getPages: AppPages.all,
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              TextButton(onPressed: (){
                Get.toNamed(AppRoute.searchPage);
              }, child: const Text('Screen 1', style: TextStyle(color: Colors.black))),
              TextButton(onPressed: (){
                Get.toNamed(AppRoute.detailPage);
              }, child: const Text('Screen 2', style: TextStyle(color: Colors.black))),
              TextButton(onPressed: (){}, child: const Text('Screen 3', style: TextStyle(color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
