import 'package:mobx/mobx.dart';

import '../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
part 'SecondPageModel.g.dart';

class SecondPageModel = _SecondPageModelBase with _$SecondPageModel, NavigationMixin;

abstract class _SecondPageModelBase with Store{
  int count = 0 ;
  
}