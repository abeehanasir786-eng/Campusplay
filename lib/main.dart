import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:campus_play/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CampusPlay',
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.pages,
    );
  }
}