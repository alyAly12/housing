import 'package:bayut/features/home/presentation/view/widgets/select_date_widget.dart';
import 'package:bayut/features/home/presentation/view/widgets/select_destnation_widget.dart';
import 'package:bayut/features/home/presentation/view/widgets/select_guest_widget.dart';
import 'package:flutter/material.dart';

import '../../../data/models/booking_step.dart';

class BookingDetailsBody extends StatefulWidget {
  const BookingDetailsBody({super.key});

  @override
  State<BookingDetailsBody> createState() => _BookingDetailsBodyState();
}

class _BookingDetailsBodyState extends State<BookingDetailsBody> {
  var step = BookingStep.selectDate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  step = BookingStep.selectDestination;
                });
              },
              child: Hero(
                tag: 'search',
                child: SelectDestinationWidget(step: step),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  step = BookingStep.selectDate;
                });
              },
              child: SelectDateWidget(step: step),
            ),
            (step == BookingStep.selectDate)
                ? const SizedBox()
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        step = BookingStep.selectGuests;
                      });
                    },
                    child: SelectGuestsWidget(step: step),
                  ),
          ],
        ),
      ),
    );
  }
}
