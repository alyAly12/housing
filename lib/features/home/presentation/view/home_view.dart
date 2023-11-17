import 'package:bayut/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bayut/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: CustomAppBar(textTheme: textTheme)),
      body: const HomeViewBody(),
    );
  }
}


