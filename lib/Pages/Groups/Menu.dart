import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';
import '../../Widgets/NavBar.dart';
import '../../Widgets/groupCard.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grupos ciclo 2023 - 2',
            style: TextStyle(color: white, fontWeight: FontWeight.bold)),
        backgroundColor: primaryColor,
      ),
      drawer: const NavBar(),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          groupCard(context, "ESCOM 1ro"),
          const SizedBox(
            height: 350,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: null,
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90),
                ),
                child: const Icon(
                  Icons.add,
                  color: white,
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
