import 'package:flutter/material.dart';
import 'package:thebaristascookbook/src/views/MainPage.dart';
import 'package:thebaristascookbook/src/views/login/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'The Barista\'s Cookbook',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // routes: Routes.routes,
        home: LoginPage(),
      );
}
