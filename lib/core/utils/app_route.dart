import 'package:bayut/features/home/presentation/view/booking_detail.dart';
import 'package:bayut/features/home/presentation/view/home_view.dart';
import 'package:bayut/features/profile/presentation/view/profile_view.dart';
import 'package:bayut/features/trips/presentation/view/trips_view.dart';
import 'package:bayut/features/wishlist/presentation/view/wish_list_view.dart';
import 'package:bayut/root_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../consts.dart';

class AppRouter
{
  late final GoRouter router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
            path: '/',
            name: 'root-screen',
            builder: (BuildContext context , GoRouterState state) {
              return const RootScreen();
            }
        ),
        GoRoute(
            path: '/home-screen',
          name: 'home',
          builder: (BuildContext context , GoRouterState state) {
              return const HomeScreen();
          }
        ),
        GoRoute(
          name: 'booking-details',
          path: '/booking-details',
          pageBuilder: (context, state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              opaque: false,
              barrierColor: appBlack.withOpacity(0.5),
              transitionDuration: const Duration(milliseconds: 300),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return child;
              },
              child: const BookingDetail(),
            );
          },
        ),
        GoRoute(
          name: 'wish-list',
          path: '/wish-list',
          pageBuilder: (context, state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              opaque: false,
              barrierColor: appBlack.withOpacity(0.5),
              transitionDuration: const Duration(milliseconds: 300),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return child;
              },
              child: const WishListView(),
            );
          },
        ),
        GoRoute(
          name: 'trips-view',
          path: '/trips-view',
          pageBuilder: (context, state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              opaque: false,
              barrierColor: appBlack.withOpacity(0.5),
              transitionDuration: const Duration(milliseconds: 300),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return child;
              },
              child: const TripsView(),
            );
          },
        ),
        GoRoute(
          name: 'profile-view',
          path: '/profile-view',
          pageBuilder: (context, state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              opaque: false,
              barrierColor: appBlack.withOpacity(0.5),
              transitionDuration: const Duration(milliseconds: 300),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return child;
              },
              child: const ProfileView(),
            );
          },
        ),

      ]
  );
}




//TODO: this method is  without using GoRoute just the regular navigation


// Navigator.push(
//   context,
//   PageRouteBuilder(
//     opaque: false,
//     barrierColor: appBlack.withOpacity(0.5),
//     transitionDuration: const Duration(milliseconds: 300),
//     reverseTransitionDuration: const Duration(
//       milliseconds: 300,
//     ),
//     transitionsBuilder: (
//       context,
//       animation,
//       secondaryAnimation,
//       child,
//     ) {
//       return child;
//     },
//     pageBuilder: (context, animation1, animation2) {
//       return BackdropFilter(
//         filter: ImageFilter.blur(
//           sigmaX: 8.0,
//           sigmaY: 8.0,
//         ),
//         child: const BookingDetailsScreen(),
//       );
//     },
//   ),
// ),