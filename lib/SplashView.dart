import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:scripture_search/SplashPresenter.dart';
import 'package:scripture_search/home/HomeView.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with AfterLayoutMixin<SplashView> {
  late final SplashPresenter presenter = SplashPresenter.instance;

  Future<void> init() async {
    await presenter.init();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(143, 143, 143, 1),
        body: Row(children: [
          Expanded(child: Text("")),
          Column(children: [
            Expanded(
                child: Center(
                    child: Text("Search the Scriptures",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 36.0)))),
            Expanded(
                child: Text(presenter.message,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0))),
          ]),
          Expanded(child: Text("")),
        ]));
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    Timer(Duration(seconds: 1), () {
      init();
    });
  }
}
