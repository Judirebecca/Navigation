import 'package:navpages/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navpages/Helpers/NavigationHelper/Routes.dart';

import 'FirstPageModel.dart';


class FirstPageVM extends FirstPageModel{
 void navigationtosecondpage(){
    navigationStream.add(NavigatorPush(pageConfig: Pages.secondPageConfig, data: 12));
  }
}