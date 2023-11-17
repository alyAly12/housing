import 'package:bayut/consts.dart';
import 'package:bayut/core/utils/app_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bayut());
}

class Bayut extends StatelessWidget {
  const Bayut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: appRed)
      ),
      routerConfig: AppRouter().router,
    );
  }
}
