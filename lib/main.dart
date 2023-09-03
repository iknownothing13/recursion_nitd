import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recursion_nitd/screens/Dashboard.dart';

import 'firebase_options.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myapp = const MaterialApp(
        title: "MY APP",
        home: Dashboard(),
        );
    return myapp;
  }
}