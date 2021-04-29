import 'package:flutter/material.dart';
import 'SplashView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
  ));
}
