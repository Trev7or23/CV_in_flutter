import 'package:flutter/material.dart';

import 'package:Trev7or23/src/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trev7or23 CV',
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}