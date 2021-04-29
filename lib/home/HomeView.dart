import 'package:flutter/material.dart';
import 'package:scripture_search/home/HomePresenter.dart';

class HomeView extends StatefulWidget {
  final HomePresenter presenter;

  HomeView() : presenter = HomePresenter.getInstance() {
    presenter.init();
  }

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search the Scriptures"),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Text(widget.presenter.allText, style: TextStyle(fontSize: 3.2)),
      )),
    );
  }
}
