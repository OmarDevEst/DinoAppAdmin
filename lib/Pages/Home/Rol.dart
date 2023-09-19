import 'package:dino_app/Pages/Groups/Menu.dart';
import 'package:dino_app/config/app_theme.dart';
import 'package:flutter/material.dart';

class Rol extends StatelessWidget {
  const Rol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: white,
      ),
      child: Column(children: [
        const Image(
          image: AssetImage('assets/Header.png'),
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text("¡Bienvenido!",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: black,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            )),
        const SizedBox(height: 30),
        const Text("Cuéntanos más de ti",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: black,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            )),
        const SizedBox(height: 15),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Menu()));
          },
          icon: const Icon(Icons.school, color: white),
          label: const Text("Escuela", style: TextStyle(color: white)),
          style: ElevatedButton.styleFrom(
            backgroundColor: secondaryColor,
            minimumSize: const Size(161, 37),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
        ),
        const SizedBox(height: 15),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Menu()));
          },
          icon: Image.asset(
            'assets/Icons/book-open-variant.png',
            height: 25,
            width: 25,
          ),
          label: const Text("Profesor", style: TextStyle(color: white)),
          style: ElevatedButton.styleFrom(
            backgroundColor: secondaryColor,
            minimumSize: const Size(161, 37),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
        ),
      ]),
    );
  }
}
