import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(home: WidgetDemo()));
 
class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets Demo')),
     
      body: Column(children: [
  Text('Header'),
  Row(children: [
    Expanded(child: Container(color: Colors.blue, height: 50)),
    Expanded(child: Container(color: Colors.green, height: 50)),
  ]),
]),
 



    );
  }
}