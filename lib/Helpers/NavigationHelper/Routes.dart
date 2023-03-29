// ignore_for_file: constant_identifier_names, unused_import


import 'package:navpages/FirstPage/FirstPage.dart';

import '../../SecondPage/SecondPage.dart';
import 'NavigationHelper.dart';

enum Routes {
  FirstPage,
  SecondPage,
}

class Pages {
  Object? data;
  static final PageConfig firstPageConfig = PageConfig(
      route: Routes.FirstPage, build: (context) => const FirstPage(data: 12,));
  static final PageConfig secondPageConfig = PageConfig(
      route: Routes.SecondPage, build: (context) => const SecondPage(data: 12,));
}
