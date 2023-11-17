import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomDetailAppBar extends StatelessWidget {
  const CustomDetailAppBar({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(Icons.close),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Stays',
              style: textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Experiences',
              style: textTheme.titleMedium,
            ),
          ),
        ],
      ),
      actions: const [SizedBox(width: 48.0)],
    );
  }
}