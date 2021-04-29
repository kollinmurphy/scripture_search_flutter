import 'package:flutter/material.dart';
import 'SplashView.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
  ));
}
