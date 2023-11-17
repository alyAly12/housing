import 'package:bayut/core/app_widgets/empty_screen.dart';
import 'package:flutter/material.dart';
class WishListViewBody extends StatelessWidget {
  const WishListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyScreen(
        title: 'Wish List is Empty',
        secondTitle: 'looks like you didn\'t add anything yet',
        thirdTitle: 'Let\'s Start',
        image: 'assets/images/bag_wish.png',
        fun: (){}
    );
  }
}
