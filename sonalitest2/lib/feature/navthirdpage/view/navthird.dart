import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navthird extends StatelessWidget {
  const navthird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Hello"),
            ],
          ),
        ),

      ),
    );
  }
}