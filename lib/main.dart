import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/app_router.dart';

void main() => runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//test againdfd
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
            dividerColor: Colors.white),
        debugShowCheckedModeBanner: false,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
      ),
    );
  }
}
