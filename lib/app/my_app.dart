import 'package:flutter/material.dart';
import 'package:flutter_layout/services/namer_provider.dart';
import 'package:flutter_layout/views/school_page.dart';
import 'package:provider/provider.dart';

import '../views/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NamerAppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          "/school": (context) => const SchoolPage(),
        },
        home: const MyHomePage(title: 'Home Page'),
      ),
    );
  }
}
