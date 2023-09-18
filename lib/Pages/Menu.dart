import 'package:dino_app/Pages/EditGroup.dart';
import 'package:dino_app/Pages/Group.dart';
import 'package:dino_app/Pages/Home.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'Items.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  Color generateRandomPastelColor() {
    Random random = Random();
    int red = 200 + random.nextInt(56); // Rango para el componente rojo
    int green = 200 + random.nextInt(56); // Rango para el componente verde
    int blue = 200 + random.nextInt(56); // Rango para el componente azul

    return Color.fromRGBO(red, green, blue, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grupos ciclo 2023 - 2',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Items()));
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
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Group())); // Aquí puedes agregar la acción para cerrar sesión
            },
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: generateRandomPastelColor(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/Fondo.png'),
                    fit: BoxFit.fitWidth,
                    width: 300,
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("ESCOM - 1ro A",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: black,
                                  fontWeight: FontWeight.bold)),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EditGroup())); // Aquí puedes agregar la acción para cerrar sesión
                              },
                              child: const Icon(
                                Icons.edit,
                                color: black,
                                size: 32,
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
