import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/ui/auth/login_page.dart';
import 'app/ui/home/home_page.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // var token = prefs.getString("token");

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  initialization();

  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // home: token != null ? const HomePage() : const LoginPage(),
          home: LoginPage(),
        );
      },
    ),
  );
}

void initialization() async {
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
}
