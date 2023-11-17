import 'package:bayut/features/home/presentation/view/widgets/property_type_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../consts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: 158,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: appWhite,
          boxShadow: [
            BoxShadow(
              color: appBlack.withOpacity(0.1),
              blurRadius: 1.0,
              spreadRadius: 1.0,
              offset: const Offset(0.0, 1.0),
            )
          ],
        ),
        child: Stack(
          children: [
            const Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: PropertyTypeList(),
            ),
            Positioned(
              top: 70.0,
              right: 8.0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.tune),
              ),
            ),
            Positioned(
              left: 16.0,
              right: 72.0,
              top: 64.0,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed('booking-details');
                },
                child: Hero(
                  tag: 'search',
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: appWhite,
                      border: Border.all(
                        color: appGrey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(32.0),
                      boxShadow: [
                        BoxShadow(
                          color: appGrey.withOpacity(0.5),
                          blurRadius: 8.0,
                          spreadRadius: 8.0,
                          offset: const Offset(0.0, 4.0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(width: 8.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Where to?',
                              style: textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Anywhere • Any week • Add guest',
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}