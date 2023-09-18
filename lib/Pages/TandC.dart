import 'package:flutter/material.dart';

class TandC extends StatelessWidget {
  const TandC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(250, 91, 173, 236),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(25.0),
              child: const Text(
                "DINOAPP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontFamily: 'Montserrat',
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            /* Insertar iamge */
            Image.asset(
              'assets/Dino.png',
              width: 295,
              height: 175,
            ),
            Container(
              // Fondo azul
              padding: const EdgeInsets.all(60.0),
              child: const Text(
                "¡Hola! Les presentamos nuestra aplicación educativa que utiliza la gamificación para hacer que el proceso de aprendizaje de la lectura sea más divertido y efectivo para los niños. Nuestra aplicación cuenta con actividades interactivas, juegos educativos y premios virtuales que ayudan a mejorar la comprensión lectora de los niños.Estamos seguros de que nuestra aplicación será una gran herramienta para cualquier padre o tutor que quiera enseñar a leer a sus hijos de una manera más entretenida. ¡Únanse a nuestra misión de mejorar el aprendizaje de los niños a través de la gamificación!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center, // Alineación del texto al centro
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text('DINOAPP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontFamily: 'Rubik Bubble',
            )),

        /*Aqui va una imagen */

        Text(
            'Hola! Les presentamos nuestra aplicación educativa que utiliza la gamificación para hacer que el proceso de aprendizaje de la lectura sea más divertido y efectivo para los niños.Nuestra aplicación cuenta con actividades interactivas, juegos educativos y premios virtuales que ayudan a mejorar la comprensión lectora de los niños.Estamos seguros de que nuestra aplicación será una gran herramienta para cualquier padre o tutor que quiera enseñar a leer a sus hijos de una manera más entretenida. ¡Únanse a nuestra misión de mejorar el aprendizaje de los niños a través de la gamificación!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Montserrat',
            )),
      ],*/ 