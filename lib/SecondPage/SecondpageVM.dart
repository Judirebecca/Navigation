import 'package:navpages/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'SecondPageModel.dart';

class SecondPageVM extends SecondPageModel {
  SecondPageVM({required int count}){
    this.count = count*2;
  }
  void navigationtofirstpage() {
    navigationStream.add(NavigatorPop());
  }
}
