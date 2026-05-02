import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(home: WidgetDemo()));
 
class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets Demo')),
      body: 
Stack(
  children: [
    // Index 0 — Sabse neecha (background)
    Container(
      width: 300, height: 200,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
    ),

    // Index 1
    Positioned(
      top: 50, left: 60,
      child: Container(
        width: 300, height: 200,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),

    // Index 2
    Positioned(
      top: 100, left: 120,
      child: Container(
        width: 300, height: 200,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),

    // Index 3 — Sabse upar (top)
    Positioned(
      top: 150, left: 180,
      child: Container(
        width: 300, height: 200,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),
      ),

    ),
    Positioned(
      top: 10, left: 10,
      child: Text('Top Left', style: TextStyle(color: const Color.fromARGB(255, 235, 101, 101))),
    ),
    Positioned(
      bottom: 10, right: 10,
      child: Icon(Icons.star, color: const Color.fromARGB(255, 54, 41, 2), size: 32),
    ),
    // Center mein
    Positioned(
      top: 80, left: 100,
      child: Text('Center Text',
        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontWeight: FontWeight.bold)),
    ),
  ],
),
  
  );}
}

//       // Nested Row inside Column
// Column(children: [
//   Text('Header'),
//   Row(children: [
//     Expanded(child: Container(color: Colors.blue, height: 50)),
//     Expanded(child: Container(color: Colors.green, height: 50)),
//   ]),
// ]),
 


 

//       Column(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//     Text('Upar'),
//     Text('Middle'),
//     Text('Neechay'),
//   ],
// ),
 

//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Main Text Widget hoon!',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           SizedBox(height: 20),
//           Icon(Icons.flutter_dash, size: 80, color: Colors.blue),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text('Main Button hoon!'),
//           ),
//           SizedBox(height: 20),
//           Container(
//   width: 250,
//   height: 150,
//   margin: EdgeInsets.all(16),
//   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//   decoration: BoxDecoration(
//     gradient: LinearGradient(
//       colors: [const Color.fromARGB(255, 0, 0, 0), const Color.fromARGB(255, 233, 109, 255)],
//       begin: Alignment.topLeft,
//       end: Alignment.bottomRight,
//     ),
//     borderRadius: BorderRadius.circular(16),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.5),
//         blurRadius: 10,
//         offset: Offset(0, 4),
//       ),
//     ],
//   ),
//   child: Center(
//     child: Text('Styled Container!',
//       style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
//   ),
// ),
 

//         ],
//       ),
