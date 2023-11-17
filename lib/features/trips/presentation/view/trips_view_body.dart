import 'package:flutter/material.dart';

import '../../../../core/app_widgets/empty_screen.dart';

class TripsViewBody extends StatelessWidget {
  const TripsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyScreen(
        title: 'Oppps!',
        secondTitle: 'looks like you didn\'t add destination',
        thirdTitle: 'Let\'s Start',
        image: 'assets/images/address_map.png',
        fun: (){}
    );
  }
}
