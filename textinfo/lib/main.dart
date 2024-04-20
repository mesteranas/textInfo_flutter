import 'package:flutter/material.dart';

void main() {
  runApp(const test());
}
class test extends StatefulWidget{
  const test({Key?key}):super(key:key);
  @override
  State<test> createState()=>_test();
}
class _test extends State<test>{
  final TextEditingController _controller=TextEditingController();
  String _labelText="";

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "text info",
      themeMode: ThemeMode.system,
      home:
    Scaffold(
      appBar:AppBar(
        title: const Text("text info"),), 
        body:Container(alignment: Alignment.center
        ,child: Column(children: [const  Text("this app is created by mesteranas")
        ,TextFormField(controller: _controller,decoration:const  InputDecoration(labelText:"type"),keyboardType:TextInputType.multiline ,textInputAction:TextInputAction.newline ,maxLines: 10,)
        ,ElevatedButton(child:const  Text("get text info") ,onPressed:(){
          setState(() {
            String lettersCount=_controller.text.length.toString();
            String wordsCount=_controller.text.split(" ").length.toString();
            String linesCount=_controller.text.split("\n").length.toString();

            _labelText="letters count $lettersCount words count $wordsCount lines count $linesCount";
          });
        },)
        ,Text(_labelText)
    ])),));
  }
}
