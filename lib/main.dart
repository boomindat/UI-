import 'package:clickcounter/form.dart';
import 'package:clickcounter/screens/dashboard.dart';
import 'package:clickcounter/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() {
//   runApp(Center(
//       child: Text(
//     "hello world1",
//     textDirection: TextDirection.ltr,
//   )));
// }
// stateless app
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "My Flutter App",
//         themeMode: ThemeMode.system,
//         debugShowCheckedModeBanner: false,
//         home: Home());
//   }
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: MyForm(),
    );
  }
}

//first stateful app
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "Stateful widget",
//         themeMode: ThemeMode.system,
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(title: Text("Stateful widget"), centerTitle: true),
//           body: StatefulClass(),
//         ));
//   }
// }

// class StatefulClass extends StatefulWidget {
//   const StatefulClass({Key? key}) : super(key: key);
//   _StatefulClassState createState() => _StatefulClassState();
// }

// class _StatefulClassState extends State<StatefulClass> {
//   bool liked = false;

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           title: Text("Shoes"),
//           trailing: IconButton(
//               icon: liked
//                   ? (Icon(Icons.favorite))
//                   : (Icon(Icons.favorite_border)),
//               onPressed: () {
//                 setState(() => liked = !liked);
//               }),
//         ),
//       ],
//     );
//   }
// }
