import 'package:flutter/material.dart';
import 'package:navpages/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navpages/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:navpages/Helpers/NavigationHelper/Routes.dart';

import 'FirstPageVM.dart';

class FirstPage extends StatefulWidget{
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final FirstPageVM _FirstPageVM = FirstPageVM();
  @override
  void initState(){
    super.initState();
    _FirstPageVM.navigationStream.stream.listen((event) {
      if(event is NavigatorPush){
        context.push(pageConfig: Pages.secondPageConfig, data: _FirstPageVM.count);
      }
    });
   
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
    
      appBar: AppBar(title: const Text("Navigation example",)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(_FirstPageVM.count.toString()),
            FloatingActionButton.extended(onPressed: _FirstPageVM.navigationtosecondpage , label: const Text("Multiply by 2"),)
          ],
        ))
      );
  }
}