// import 'package:flutter/material.dart';
// import 'news_list_page.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'CNN News',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('CNN Indonesia', textAlign: TextAlign.center),
//       //   centerTitle: true,
//       // ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 2),
//                 ),
//                 child: Image.network(
//                   'https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png',
//                   width: 200,
//                 ),
//               ),
//             ),
//             SizedBox(height: 32),
//             Column(
//               children: [
//                 Wrap(
//                   spacing: 16,
//                   runSpacing: 16,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => NewsListPage(category: 'terbaru'),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         fixedSize: Size(130, 40),
//                       ),
//                       child: Text('Terbaru'),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => NewsListPage(category: 'nasional'),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         fixedSize: Size(130, 40),
//                       ),
//                       child: Text('Nasional'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 Wrap(
//                   spacing: 16,
//                   runSpacing: 16,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => NewsListPage(category: 'olahraga'),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         fixedSize: Size(130, 40),
//                       ),
//                       child: Text('Olahraga'),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => NewsListPage(category: 'teknologi'),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         fixedSize: Size(130, 40),
//                       ),
//                       child: Text('Teknologi'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:nyobadulu/category.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makanan App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoryPage(),
    );
  }
}

