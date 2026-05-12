import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(home: WidgetDemo()));
 
class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets Demo')),
      body: 
// // ElevatedButton — raised button
// ElevatedButton(
//   onPressed: () { print('Pressed!'); },
//   style: ElevatedButton.styleFrom(
//     backgroundColor: Colors.blue,
//     foregroundColor: Colors.white,
//     padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//   ),
//   child: Text('Click Me!', style: TextStyle(fontSize: 16)),
// ),
 
// // TextButton — flat button
// TextButton(
//   onPressed: () { print('Text tapped!'); },
//   child: Text('Text Button'),
// ),
 
// IconButton
  // IconButton(
  //   onPressed: () { print('Icon tapped!'); },
  //   icon: Icon(Icons.favorite, color: Colors.red),
  //   iconSize: 32,
  // ),
 
// FloatingActionButton
// FloatingActionButton(
//   onPressed: () {},
//   child: Icon(Icons.add),
//   backgroundColor: Colors.orange,
// )



// Image.network(
//   'https://picsum.photos/300/200',
//   width: 300, height: 200,
//   fit: BoxFit.cover,
//   loadingBuilder: (context, child, loadingProgress) {
//     if (loadingProgress == null) return child;
//     return CircularProgressIndicator();
//   },
//   errorBuilder: (context, error, stackTrace) {
//     return Icon(Icons.broken_image, size: 80);
//   },
// ),
// Image.asset('assets/images/logo.png', width: 150),

    );
  }
}