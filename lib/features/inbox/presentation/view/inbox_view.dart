import 'package:bayut/features/inbox/presentation/view/inbox_view_body.dart';
import 'package:flutter/material.dart';


class InboxView extends StatelessWidget {
  const InboxView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InboxViewBody(),
    );
  }
}
