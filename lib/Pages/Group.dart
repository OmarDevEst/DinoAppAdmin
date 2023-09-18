import 'package:dino_app/Pages/EditGroup.dart';
import 'package:dino_app/Pages/Home.dart';
import 'package:dino_app/Pages/Profile.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                image: AssetImage('assets/user-interface.png'),
                width: 32,
                height: 32,
              ),
              const SizedBox(width: 10), // Espacio entre el icono y el nombre
              const Text(
                "Nombre de la Persona",
                style: TextStyle(
                    fontSize:
                        16), // Cambia el estilo del texto según tus preferencias
              ),
              const SizedBox(width: 10), // Espacio entre el nombre y el botón
              ElevatedButton(
                onPressed: () {
                  // Agrega la acción que deseas ejecutar al hacer clic en el botón de papelera aquí
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: terciaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  // Cambia el color del botón según tus preferencias
                ),
                child: const Icon(
                  Icons.delete,
                  color: Colors
                      .white, // Cambia el color del icono de papelera según tus preferencias
                ),
              ),
            ],
          ),
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
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(
                  image: AssetImage('assets/user-interface.png'),
                  width: 32,
                  height: 32,
                ),
                const SizedBox(width: 10), // Espacio entre el icono y el nombre
                const Text(
                  "Nombre de la Persona",
                  style: TextStyle(
                      fontSize:
                          16), // Cambia el estilo del texto según tus preferencias
                ),
                const SizedBox(width: 10), // Espacio entre el nombre y el botón
                ElevatedButton(
                  onPressed: () {
                    // Agrega la acción que deseas ejecutar al hacer clic en el botón de papelera aquí
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: terciaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    // Cambia el color del botón según tus preferencias
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Colors
                        .white, // Cambia el color del icono de papelera según tus preferencias
                  ),
                ),
              ],
            ),
          ),
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
