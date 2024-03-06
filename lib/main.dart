import 'package:flutter/material.dart';
// import 'package:metro_dwell/navbar.dart';
import 'package:metro_dwell/app.dart';

void main() {
  runApp(const MyApp());
}

// const Color darkBlue = Color(0xFF12202F);

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Metro Dwell',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: darkBlue),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Metro Dwell'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: const Center(child: BottomNavigation()
//           // Column(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: <Widget>[
//           //     const Text(
//           //       'You have pushed the button this many times:',
//           //     ),
//           //     Text(
//           //       '$_counter',
//           //       style: Theme.of(context).textTheme.headlineMedium,
//           //     ),
//           //   ],
//           // ),
//           ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: const Icon(Icons.add),
//       // ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
