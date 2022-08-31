import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './p/premium.dart';
import './l/library.dart';
import './s/search.dart';
import './h/homepage.dart';
import 'utils/audio.dart';
// ignore: import_of_legacy_library_into_null_safe

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/search': (context) => Search(),
        '/library': (context) => LibraryScreen(),
        '/premium': (context) => Premium(),
      },
    );
  }
}
