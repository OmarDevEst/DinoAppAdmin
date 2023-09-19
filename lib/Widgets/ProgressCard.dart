import 'package:flutter/material.dart';

import '../config/app_theme.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 1,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          child: Row(
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
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
