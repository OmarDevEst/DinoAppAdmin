import 'package:dino_app/Pages/Home.dart';
import 'package:dino_app/Pages/Items.dart';
import 'package:dino_app/Pages/Menu.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alumno 1',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Items()));
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
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Image(
              image: AssetImage('assets/user-interface.png'),
              width: 32,
              height: 32,
            ),
            const Text("Alumno 1",
                style: TextStyle(
                  fontSize: 24,
                  color: black,
                  fontWeight: FontWeight.bold,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      // Aquí puedes agregar la acción para cerrar sesión
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      minimumSize: const Size(78, 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text("Intentos",
                        style: TextStyle(color: white, fontSize: 14))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
// Aquí puedes agregar la acción para cerrar sesión
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: terciaryColor,
                      minimumSize: const Size(78, 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text("Errores",
                        style: TextStyle(color: white, fontSize: 14))),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const Text("Sección 1. Nombre 1",
                style: TextStyle(
                  fontSize: 20,
                  color: black,
                  fontWeight: FontWeight.bold,
                )),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Nivel 1. Nombre "),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: secondaryColor, // Color del fondo del círculo
                        shape: BoxShape.circle, // Forma circular
                      ),
                      child: const Center(
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: white, // Color del texto
                            fontWeight: FontWeight.bold, // Texto en negrita
                            fontSize: 14, // Tamaño de fuente
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: terciaryColor, // Color del fondo del círculo
                        shape: BoxShape.circle, // Forma circular
                      ),
                      child: const Center(
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: white, // Color del texto
                            fontWeight: FontWeight.bold, // Texto en negrita
                            fontSize: 14, // Tamaño de fuente
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Nivel 1. Nombre "),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: secondaryColor, // Color del fondo del círculo
                        shape: BoxShape.circle, // Forma circular
                      ),
                      child: const Center(
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: white, // Color del texto
                            fontWeight: FontWeight.bold, // Texto en negrita
                            fontSize: 14, // Tamaño de fuente
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: terciaryColor, // Color del fondo del círculo
                        shape: BoxShape.circle, // Forma circular
                      ),
                      child: const Center(
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: white, // Color del texto
                            fontWeight: FontWeight.bold, // Texto en negrita
                            fontSize: 14, // Tamaño de fuente
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
}
