import 'package:flutter/material.dart';

import '../Pages/Groups/Profile.dart';
import '../config/app_theme.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Profile()));
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
              color:
                  white, // Cambia el color del icono de papelera según tus preferencias
            ),
          ),
        ],
      ),
    );
  }
}
