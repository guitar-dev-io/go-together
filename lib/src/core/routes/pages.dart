//  route_pages;
import 'package:flutter/material.dart';
import '/src/core/error/error.dart';
import 'routes.dart';


class AppRoute {
  static const initial = RoutesName.initial;
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.initial:
      // return const PageFadeTransition(child: HomePage()).build;

      default:
        // If there is no such named route in the switch statement
        throw const RouteException('Route not found!');
    }
  }

  // generate routes with go router
  //static GoRoute goRoute;

  final routes = [
    // GoRoute(
    //   path: RoutesName.initial,
    //   builder: (context, state) => const HomePage(),
    // ),
  ];
}
