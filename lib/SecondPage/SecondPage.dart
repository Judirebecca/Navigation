import 'package:flutter/material.dart';
import 'package:navpages/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navpages/Helpers/NavigationHelper/NavigationHelper.dart';

import 'SecondpageVM.dart';


class SecondPage extends StatefulWidget{
  const SecondPage({super.key, required int data});
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final SecondPageVM _SecondPageVM = SecondPageVM();
  @override
  void initState(){
    super.initState();
    _SecondPageVM.navigationStream.stream.listen((event) {
      if(event is NavigatorPop){
        context.pop(data: 12*2);
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
            const Text("24"),
          FloatingActionButton.extended(onPressed: _SecondPageVM.navigationtofirstpage, label: const Text("Back"),)
        ],))
      );
  }
}