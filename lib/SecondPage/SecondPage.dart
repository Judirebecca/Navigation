import 'package:flutter/material.dart';
import 'package:navpages/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navpages/Helpers/NavigationHelper/NavigationHelper.dart';

import 'SecondpageVM.dart';


class SecondPage extends StatefulWidget{
  const SecondPage({super.key, required this.data});
  final int data;
  @override
  State<SecondPage> createState() => _SecondPageState();
  
}

class _SecondPageState extends State<SecondPage> {
 late final SecondPageVM _SecondPageVM = SecondPageVM(count: widget.data);
  @override
  void initState(){
    super.initState();
    _SecondPageVM.navigationStream.stream.listen((event) {
      if(event is NavigatorPop){
        context.pop(data: _SecondPageVM.count);
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
          const Text("Answer is "),
          Text(_SecondPageVM.count.toString()),
          FloatingActionButton.extended(onPressed: _SecondPageVM.navigationtofirstpage, label: const Text("Back"),)
        ],))
      );
  }
}