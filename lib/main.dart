import 'package:flutter/material.dart';
import 'package:poke_api/shared/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: RoutesApp().routes,
      initialRoute: RoutesApp().initialRoute,
    );
  }
}

