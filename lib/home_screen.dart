import 'package:flutter/material.dart';
import 'package:flutter_application_7/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        var provider = context.read<HomeProvider>();
        provider.increment();
      }),
      body: Center(
        child: Builder(builder: (context) {
          var pro = context.watch<HomeProvider>();
          return Text(
            pro.number.toString(),
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          );
        }),
      ),
    );
  }
}
