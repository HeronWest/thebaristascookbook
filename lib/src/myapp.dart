import 'package:flutter/material.dart';
import 'package:thebaristascookbook/src/features/introduction/introduction_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'The Barista\'s Cookbook',
        theme: ThemeData(
          useMaterial3: false,
          primarySwatch: Colors.blue,
        ),
        // routes: Routes.routes,
        home: const IntroductionPage(),
      );
}
