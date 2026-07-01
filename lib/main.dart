import 'package:flutter/material.dart';
import 'package:profile_card_generator/screens/utils/route_generator.dart';

import 'package:profile_card_generator/screens/utils/routing_helper.dart';
import 'package:profile_card_generator/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RoutingHelper(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute
    );
  }
}
