import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';
import '../../Widgets/ItemCard.dart';
import '../../Widgets/NavBar.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recompensas',
            style: TextStyle(color: white, fontWeight: FontWeight.bold)),
        backgroundColor: primaryColor,
      ),
      drawer: const NavBar(),
      body: const Center(
        child: Column(children: [
          SizedBox(
            height: 70,
          ),
          SizedBox(
            height: 10,
          ),
          CardItem(),
        ]),
      ),
    );
  }
}
