import 'package:flutter/material.dart';
import 'package:navpages/FirstPage/FirstPage.dart';
import 'package:navpages/SecondPage/SecondPage.dart';

import 'Helpers/NavigationHelper/NavigationHelper.dart';
import 'Helpers/NavigationHelper/Routes.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      onGenerateRoute: AppRoute(initialPage: Pages.firstPageConfig, initialPageData: null).onGenerateRoute,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 0, 69, 126),
      ),

    
    );
  }
}