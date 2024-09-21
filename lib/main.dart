import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures Flutter bindings are initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OTP Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
               // Your home screen route
        '/mainScreen': (context) => MainScreen(), // Define the route to MainScreen
      },
      home: MainScreen(), // Set MainScreen as the home widget
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:random123/main_screen.dart'; // Adjust the import path as necessary
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Random123',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MainScreen(),
//     );
//   }
// }
