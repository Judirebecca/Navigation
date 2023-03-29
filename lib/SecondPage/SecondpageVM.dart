import 'package:navpages/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navpages/Helpers/NavigationHelper/Routes.dart';
import 'SecondPageModel.dart';

class SecondPageVM extends SecondPageModel{
  void navigationtofirstpage(){
    navigationStream.add(NavigatorPop());
  }
}