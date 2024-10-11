import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugassssss/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:tugassssss/app/modules/homepage/views/homepage_view.dart';
import 'app/routes/app_pages.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Your App",
      debugShowCheckedModeBanner: false,
      initialBinding: HomePageBinding(), // Initial binding for Home
      initialRoute: AppPages.INITIAL, // Initial route
      getPages: AppPages.routes,      // Routes defined in AppPages
      home: HomePageView(),               // Home view displayed at start
    );
  }
}
