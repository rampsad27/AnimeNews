import 'package:aniime_news/ui/screen/Home/animeDetailScreen.dart';
import 'package:aniime_news/ui/screen/Home/animeScreen.dart';
import 'package:aniime_news/ui/screen/notification.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static GoRouter router =
      GoRouter(navigatorKey: navigatorKey, routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const AnimeScreen();
      },
      routes: [
        GoRoute(
            path: 'notif',
            builder: (BuildContext context, GoRouterState state) {
              return const NotificationScreen();
            })
      ],
    )
  ]);
}
