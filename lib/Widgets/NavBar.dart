import 'package:dino_app/Pages/Groups/Menu.dart';
import 'package:flutter/material.dart';
import 'package:dino_app/config/app_theme.dart';

import '../Pages/Home/Home.dart';
import '../Pages/Items/Items.dart'; // Importa la clase Items si aún no está importada

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: primaryColor,
            height: 56,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Icon(
                  Icons.person,
                  color: white,
                  size: 40,
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      "Profesor",
                      style: TextStyle(fontSize: 24, color: white),
                    ),
                    Text("   example@mail.com",
                        style: TextStyle(fontSize: 12, color: white)),
                  ],
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
    );
  }
}
