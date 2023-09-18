import 'package:dino_app/Pages/Home.dart';
import 'package:dino_app/Pages/Menu.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';

import 'Items.dart';

class EditItems extends StatelessWidget {
  const EditItems({Key? key}) : super(key: key);

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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 280,
                width: 280,
                decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: secondaryColor, width: 5),
                    borderRadius: BorderRadius.circular(5)),
                child: const Image(
                    image: AssetImage(
                  'assets/Recompensa.png',
                ))),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 37, // Establece la altura que desees
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre...',
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.all(3),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(""),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_time_filled, color: black),
                  label:
                      const Text("Suspender", style: TextStyle(color: black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: alert,
                    minimumSize: const Size(161, 37),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.replay, color: black),
                  label:
                      const Text("Actualizar", style: TextStyle(color: black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: const Size(161, 37),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
