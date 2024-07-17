// import 'package:flutter/material.dart';
// import 'package:flutter_link_previewer/flutter_link_previewer.dart';
// import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Link Peek Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const LinkPeekScreen(),
//     );
//   }
// }

// class LinkPeekScreen extends StatefulWidget {
//   const LinkPeekScreen({super.key});

//   @override
//   State<LinkPeekScreen> createState() => _LinkPeekScreenState();
// }

// class _LinkPeekScreenState extends State<LinkPeekScreen> {
//   final TextEditingController _controller = TextEditingController();

//   Future<void> _launchURL(String url) async {
//     final Uri uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri, mode: LaunchMode.externalApplication);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Link Peek Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: const InputDecoration(
//                 labelText: 'Enter URL',
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.url,
//               onSubmitted: (_) => setState(() {}),
//             ),
//             const SizedBox(height: 20),
//             if (_controller.text.isNotEmpty)
//               GestureDetector(
//                 onTap: () => _launchURL(_controller.text),
//                 child: LinkPreview(
//                   enableAnimation: true,
//                   onPreviewDataFetched: (data) {
//                     // Handle preview data if needed
//                   },
//                   previewData: null,
//                   text: _controller.text,
//                   width: MediaQuery.of(context).size.width,
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
