import 'package:bayut/features/trips/presentation/view/trips_view_body.dart';
import 'package:flutter/material.dart';


class TripsView extends StatelessWidget {
  const TripsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TripsViewBody(),
    );
  }
}
