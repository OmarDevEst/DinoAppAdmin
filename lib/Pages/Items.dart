import 'package:dino_app/Pages/Home.dart';
import 'package:dino_app/Pages/Menu.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';

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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              color: primaryColor,
              height: 56,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Image(
                    image: AssetImage('assets/Icons/chalkboard-teacher.png'),
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Profesor",
                    style: TextStyle(fontSize: 24, color: white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Grupos',
                  style: TextStyle(
                    fontSize: 12,
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Menu()));
                // Aquí puedes agregar la acción para la opción "Inicio"
              },
            ),
            ListTile(
              leading: const Icon(Icons.military_tech_outlined),
              title: const Text('Recompensas',
                  style: TextStyle(
                    fontSize: 12,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Items())); // Aquí puedes agregar la acción para la opción "Configuración"

                // Aquí puedes agregar la acción para la opción "Configuración"
              },
            ),
            const SizedBox(
              height: 400,
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: terciaryColor,
              ),
              title: const Text('Cerrar sesión',
                  style: TextStyle(fontSize: 12, color: terciaryColor)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Home())); // Aquí puedes agregar la acción para cerrar sesión
              },
            ),
          ],
        ),
      ),
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
