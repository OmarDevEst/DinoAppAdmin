import 'package:dino_app/Pages/Groups/Profile.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../Widgets/NavBar.dart';
import '../../Widgets/profile Card.dart';
import 'EditGroup.dart';

class Group extends StatelessWidget {
  const Group({Key? key}) : super(key: key);

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
      drawer: const NavBar(),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 195,
            width: 320,
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
                  height: 195,
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
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Agrega aquí la lógica para registrar al usuario
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: black,
              minimumSize: const Size(320, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text('Código de clase: 123 - 456',
                style: TextStyle(color: white, fontSize: 13)),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 22,
            width: 77,
            child: Text("Profesor",
                style: TextStyle(
                  fontSize: 18,
                  color: black,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          const CardProfile(),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(
            height: 22,
            width: 77,
            child: Text("Alumnos",
                style: TextStyle(
                  fontSize: 18,
                  color: black,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          const CardProfile(),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
        ]),
      ),
    );
  }
}
