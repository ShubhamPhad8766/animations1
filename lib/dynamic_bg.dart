// import 'package:flutter/material.dart';
// import 'package:glossy/glossy.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           title: const Text('Glass Morphism Example'),
//         ),
//         body: Center(
//           child: SizedBox(
//             width: 300,
//             height: 300,
//             child: Stack(
//               children: [
//                 Container(
//                   height: 140,
//                   width: 140,
//                   decoration: (BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(70))),
//                 ),
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: Container(
//                     height: 140,
//                     width: 140,
//                     decoration: (BoxDecoration(
//                         color: Colors.orange,
//                         borderRadius: BorderRadius.circular(70))),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: GlossyContainer(
//                     width: 200,
//                     height: 200,
//                     borderRadius: BorderRadius.circular(12),
//                     child: const Center(
//                       child: Text(
//                         'Shubham Phad',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
