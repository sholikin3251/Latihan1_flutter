import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard_screen.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      final box = GetStorage();
      String? username = box.read("username");
      if (username == null) {
        Get.off(LoginScreen());
      } else {
        Get.off(DashboardScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("splash_screen")));
  }
}
