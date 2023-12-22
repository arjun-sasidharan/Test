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
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoute.homepage,
      getPages: AppPages.all,
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
              TextButton(onPressed: (){}, child: const Text('Screen 1')),
              TextButton(onPressed: (){}, child: const Text('Screen 2')),
              TextButton(onPressed: (){}, child: const Text('Screen 3')),
          ],
        ),
      ),
    );
  }
}
