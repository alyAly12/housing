import 'package:bayut/features/inbox/presentation/view/inbox_view.dart';
import 'package:bayut/features/profile/presentation/view/profile_view.dart';
import 'package:bayut/features/trips/presentation/view/trips_view.dart';
import 'package:bayut/features/wishlist/presentation/view/wish_list_view.dart';
import 'package:flutter/material.dart';

import 'consts.dart';
import 'features/home/presentation/view/home_view.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late PageController controller;
  int currentScreen = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const WishListView(),
    const TripsView(),
    const InboxView(),
    const ProfileView()
  ];
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currentScreen);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: screens,
        ),
        bottomNavigationBar: NavigationBar(
            indicatorColor: appRed,
            elevation: 2,
            selectedIndex: currentScreen,
            height: kBottomNavigationBarHeight,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            onDestinationSelected: (int index) {
              setState(() {
                currentScreen = index;
              });
              controller.jumpToPage(currentScreen);
            },
            destinations:  const [
              NavigationDestination(
                icon: Icon(Icons.search,),
                label: '',
              ),
              NavigationDestination(icon: Icon(Icons.favorite_border_outlined), label: ''),
              NavigationDestination(
                  icon:  Icon(Icons.wb_sunny_outlined),
                  label: ''),
              NavigationDestination(icon: Icon(Icons.message_outlined), label: ''),
              NavigationDestination(icon: Icon(Icons.person_outline), label: ''),
            ])


    );
  }
}