import 'package:flutter/material.dart';
import 'package:dino_app/config/app_theme.dart';
import '../Pages/Groups/EditGroup.dart';
import '../Pages/Groups/Group.dart'; // Asegúrate de importar la clase EditGroup si aún no está importada
import 'dart:math';

GestureDetector groupCard(BuildContext context, String name) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Group(),
        ),
      );
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
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditGroup(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.edit,
                      color: black,
                      size: 32,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

generateRandomPastelColor() {
  Random random = Random();
  int red = 200 + random.nextInt(56); // Rango para el componente rojo
  int green = 200 + random.nextInt(56); // Rango para el componente verde
  int blue = 200 + random.nextInt(56); // Rango para el componente azul

  return Color.fromRGBO(red, green, blue, 1.0);
}
