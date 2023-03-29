import 'package:mobx/mobx.dart';

import '../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
part 'FirstPageModel.g.dart';

class FirstPageModel = _FirstPageModelBase with _$FirstPageModel, NavigationMixin;

abstract class _FirstPageModelBase with Store{
  
}