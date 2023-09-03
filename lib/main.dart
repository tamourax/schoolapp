import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:schoolapp/core/utils/app_router.dart';
=======
import 'package:schoolapp/Features/HomePage/view/homepage.dart';
import 'package:schoolapp/Features/Splash/presentation/views/splash_view.dart';
>>>>>>> cb15973f87455e6d7f2697549d4e16dc2f11c63a

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      routeInformationParser: AppRouter.router.routeInformationParser,
      routerDelegate: AppRouter.router.routerDelegate,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
=======
      home: const SplashView(),
>>>>>>> cb15973f87455e6d7f2697549d4e16dc2f11c63a
    );
  }
}