import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';

import '../../Widgets/NavBar.dart';
import 'EditItem.dart';

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
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 70,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EditItems()));
            },
            child: Container(
                height: 45,
                width: 325,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: secondaryColor, // Color del borde
                    width: 2.0, // Ancho del borde
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      image: AssetImage("assets/gorro.png"),
                      width: 45,
                      height: 45,
                    ),
                    SizedBox(
                      width: 275,
                      child: Center(
                        child: Text("Gorra Policial",
                            style: TextStyle(
                              fontSize: 15,
                              color: black,
                            )),
                      ),
                    ),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
