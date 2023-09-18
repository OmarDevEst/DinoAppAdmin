import 'package:dino_app/Pages/Groups/Report.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';

import '../../Widgets/NavBar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alumno 1',
            style: TextStyle(color: white, fontWeight: FontWeight.bold)),
        backgroundColor: primaryColor,
      ),
      drawer: const NavBar(),
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
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Progesos",
                    style: TextStyle(
                      fontSize: 20,
                      color: black,
                      fontWeight: FontWeight.bold,
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Report())); // Aquí puedes agregar la acción para cerrar sesión
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      minimumSize: const Size(88, 33),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text("Reporte",
                        style: TextStyle(color: white, fontSize: 18))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Text(""),
                    SizedBox(
                      width: 110, // Tamaño de la barra de progreso
                      child: Text(
                        "Comprensión:",
                        style: TextStyle(
                          fontSize: 16, // Tamaño de fuente del título
                          // Texto en negrita
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    width:
                        10), // Espacio entre el título y la barra de progreso
                Column(
                  children: [
                    const Text("90%", // Porcentaje de progreso
                        style: TextStyle(
                            fontSize: 14, // Tamaño de fuente del porcentaje
                            color: secondaryColor // Texto en negrita
                            )),
                    SizedBox(
                      width: 177, // Tamaño de la barra de progreso
                      height: 20,
                      child: ClipRRect(
                        // ClipRRect se utiliza para aplicar el borderRadius
                        borderRadius: BorderRadius.circular(
                            10), // Establece el radio del borde aquí
                        child: const LinearProgressIndicator(
                          backgroundColor:
                              grey, // Color de fondo de la barra de progreso
                          valueColor: AlwaysStoppedAnimation<Color>(
                              secondaryColor), // Color de la barra de progreso
                          value:
                              0.90, // Valor de progreso (cambia esto según tus necesidades)
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Text(""),
                    SizedBox(
                      width: 110,
                      child: Text(
                        "Fluidez:",
                        style: TextStyle(
                          fontSize: 16, // Tamaño de fuente del título
                          // Texto en negrita
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    width:
                        10), // Espacio entre el título y la barra de progreso
                Column(
                  children: [
                    const Text("90%", // Porcentaje de progreso
                        style: TextStyle(
                            fontSize: 14, // Tamaño de fuente del porcentaje
                            color: secondaryColor // Texto en negrita
                            )),
                    SizedBox(
                      width: 177, // Tamaño de la barra de progreso
                      height: 20,
                      child: ClipRRect(
                        // ClipRRect se utiliza para aplicar el borderRadius
                        borderRadius: BorderRadius.circular(
                            10), // Establece el radio del borde aquí
                        child: const LinearProgressIndicator(
                          backgroundColor:
                              grey, // Color de fondo de la barra de progreso
                          valueColor: AlwaysStoppedAnimation<Color>(
                              secondaryColor), // Color de la barra de progreso
                          value:
                              0.90, // Valor de progreso (cambia esto según tus necesidades)
                        ),
                      ),
                    )
                  ],
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
              child: Text("Aspectos sobresalientes",
                  style: TextStyle(
                    fontSize: 18,
                    color: black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: terciaryColor,
                      minimumSize: const Size(80, 21),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text("Trabajador",
                        style: TextStyle(color: white, fontSize: 14))),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: purple,
                      minimumSize: const Size(80, 21),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text("Reporte",
                        style: TextStyle(color: white, fontSize: 14))),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(
              height: 22,
              child: Text("Comentarios del docente",
                  style: TextStyle(
                    fontSize: 18,
                    color: black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 37,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mi primer comentario...',
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(3),
                    child: ImageIcon(
                      AssetImage(
                          'assets/user-interface.png'), // Reemplaza con la ruta de tu imagen
                      color: black, // Color de la imagen
                    ),
                  ),
                  contentPadding: EdgeInsets.all(3),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
