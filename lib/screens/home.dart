import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                    child: Column(
              children: [],
            )))
          ],
        ),
      ),
    );
  }
}
