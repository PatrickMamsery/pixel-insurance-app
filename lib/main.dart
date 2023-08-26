import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app/ui/auth/OTP_Login.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // var token = prefs.getString("token");

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  initialization();

  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // home: token != null ? const HomePage() : const LoginPage(),
          home: OTP_Login(),
        );
      },
    ),
  );
}

void initialization() async {
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
}
