import 'dart:ui';
import 'package:bayut/consts.dart';
import 'package:bayut/features/home/presentation/view/widgets/booking_details_body.dart';
import 'package:bayut/features/home/presentation/view/widgets/custom_details_screen_appbar.dart';
import 'package:flutter/material.dart';

import '../../data/models/booking_step.dart';

class BookingDetail extends StatefulWidget {
  const BookingDetail({super.key});

  @override
  State<BookingDetail> createState() => _BookingDetailState();
}

class _BookingDetailState extends State<BookingDetail> {
  @override
  Widget build(BuildContext context) {
    var step = BookingStep.selectDate;
    final textTheme = Theme.of(context).textTheme;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: CustomDetailAppBar(textTheme: textTheme)),
        backgroundColor: appWhite.withOpacity(0.5),
        body: const BookingDetailsBody(),
        bottomNavigationBar: (step == BookingStep.selectDate)
            ? null
            : BottomAppBar(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                notchMargin: 0,
                color: Colors.white,
                surfaceTintColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        if (step == BookingStep.selectDestination) {
                          setState(() {
                            step = BookingStep.selectGuests;
                          });
                        } else {
                          setState(() {
                            step = BookingStep.selectDestination;
                          });
                        }
                      },
                      child: Text(
                        'Clear all',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                    FilledButton.icon(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: appRed,
                        minimumSize: const Size(100, 56.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      icon: const Icon(Icons.search),
                      label: const Text('Search'),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
